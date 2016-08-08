<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Noticia;
use SICBundle\Entity\Bitacora;
use SICBundle\Form\NoticiaType;

/**
 * Noticia controller.
 *
 */
class NoticiaController extends Controller
{
    /**
     * Lists all Noticia entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $noticias = $em->getRepository('SICBundle:Noticia')->findAll();

        return $this->render('noticia/index.html.twig', array(
            'noticias' => $noticias,
        ));
    }

    /**
     * Creates a new Noticia entity.
     *
     */
    public function newAction(Request $request)
    {
        $noticium = new Noticia();
        $form = $this->createForm('SICBundle\Form\NoticiaType', $noticium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            
            $noticium->setUsuario($this->getUser());
            $noticium->setFecha(new \DateTime('now'));
            $noticium->setFechaPub(new \DateTime('now'));
            $this->get('session')->getFlashBag()->add('success', 'Se han agregado una noticia nueva');
            $entrada = new Bitacora($this->getUser(),'agregó','una Noticia nueva, titulada: '.$noticium->getTitulo().'.');
            $em->persist($noticium);
            $em->persist($entrada);

            $em->flush();

            return $this->redirectToRoute('noticia_show', array('id' => $noticium->getId()));
        }

        return $this->render('noticia/new.html.twig', array(
            'noticium' => $noticium,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Noticia entity.
     *
     */
    public function showAction(Noticia $noticium)
    {
        $deleteForm = $this->createDeleteForm($noticium);

        return $this->render('noticia/show.html.twig', array(
            'noticium' => $noticium,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Noticia entity.
     *
     */
    public function editAction(Request $request, Noticia $noticium)
    {
        $deleteForm = $this->createDeleteForm($noticium);
        $editForm = $this->createForm('SICBundle\Form\NoticiaType', $noticium);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($noticium);
            $this->get('session')->getFlashBag()->add('success', 'Se han modificado una noticia');
            $entrada = new Bitacora($this->getUser(),'modificó','una la noticia '.$noticium->getTitulo().'.');
            $em->persist($entrada);
            $em->flush();

            return $this->redirectToRoute('noticia_edit', array('id' => $noticium->getId()));
        }

        return $this->render('noticia/edit.html.twig', array(
            'noticium' => $noticium,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Noticia entity.
     *
     */
    public function deleteAction(Request $request, Noticia $noticium)
    {
        $form = $this->createDeleteForm($noticium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entrada = new Bitacora($this->getUser(),'eliminó','una Noticia '.$noticium->getTitulo());
            $em->remove($noticium);
            $em->persist($entrada);
            $em->flush();
        }

        return $this->redirectToRoute('noticia_index');
    }

    /**
     * Creates a form to delete a Noticia entity.
     *
     * @param Noticia $noticium The Noticia entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Noticia $noticium)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('noticia_delete', array('id' => $noticium->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    public function newsletterAction()
    {
        $em = $this->getDoctrine()->getManager();
        $noticias = $em->getRepository('SICBundle:Noticia')->NoticiasOrdenDesc(); //solo las noticias que están visibles

        return $this->render('noticia/newsletter.html.twig', array(
            'noticias' => $noticias,
        ));
    }

    /* cambia el estado de visto de una noticia*/
    public function alternarVisibilidadAction(Request $request, Noticia $noticium)
    {
        if ($this->getUser() != NULL) {
            $em = $this->getDoctrine()->getManager();
            if ($noticium->getVisibilidad() == '0') {
                //a invisible
                $noticium->setVisibilidad('1');
                $this->get('session')->getFlashBag()->add('success', 'Se ha colocado la noticia "'.$noticium->getTitulo().'" como visible.');
                $entrada = new Bitacora($this->getUser(),'modificó','la visibilidad de '.$noticium->getTitulo().' haciendola visible');
            }else{
                // a visible
                $noticium->setVisibilidad('0');
                $this->get('session')->getFlashBag()->add('success', 'Se ha colocado la noticia "'.$noticium->getTitulo().'" como invisible.');
                $entrada = new Bitacora($this->getUser(),'modificó','la visibilidad de '.$noticium->getTitulo().' haciendola invisible');
            }
            $em->persist($noticium);
            $em->persist($entrada);
            $em->flush();

            return NULL;
        }

        return $this->redirectToRoute('sic_homepage');
    }

    // Devuelve los comunicados enviados a la vista de correo.html.twig
    public function correosAction()
    {
        $em = $this->getDoctrine()->getManager();
        $comunicados = $em->getRepository('SICBundle:Comunicado')->findAll();
        $usuarios_reciben_correo = $em->getRepository('SICBundle:Noticia')->CantidadPersonasCorreo();

        return $this->render('noticia/correos.html.twig', array(
            'comunicados' => $comunicados,
            'reciben_correo' => $usuarios_reciben_correo,
        ));
    }

    public function correosUsuariosAction()
    {
        $em = $this->getDoctrine()->getManager();
        $jfg = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findAll();
        $persona = $em->getRepository('SICBundle:Persona')->findAll();
        $usuarios_reciben_correo = $em->getRepository('SICBundle:Noticia')->CantidadPersonasCorreo();

        return $this->render('noticia/correos.usuarios.html.twig', array(
            'jfg' => $jfg,
            'persona' => $persona,
            'reciben_correo' => $usuarios_reciben_correo,
        ));
    }

    public function alternarSubscripcionAction($correo)
    {
        $em = $this->getDoctrine()->getManager();

        $jfg = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('email' => $correo));
        $personas = $em->getRepository('SICBundle:Persona')->findBy(array('email' => $correo));

        if (sizeof($jfg) > 0) {
            $persona = $jfg[0];
            if ($persona->getRecibirCorreo()) {
                $persona->setRecibirCorreo(false);
                $bitacora = new Bitacora($this->getUser(),'modificó','cambio el estatus para que '.$correo.' no reciba los correos del sistema.');
            }else{
                $persona->setRecibirCorreo(true);
                $bitacora = new Bitacora($this->getUser(),'modificó','cambio el estatus para que '.$correo.' reciba los correos del sistema.');
            }
        }

        if (sizeof($personas) > 0) {
            $persona = $personas[0];
            if ($persona->getRecibirCorreo()) {
                $persona->setRecibirCorreo(false);
                $bitacora = new Bitacora($this->getUser(),'modificó','cambio el estatus para que '.$correo.' no reciba los correos del sistema.');
            }else{
                $persona->setRecibirCorreo(true);
                $bitacora = new Bitacora($this->getUser(),'modificó','cambio el estatus para que '.$correo.' reciba los correos del sistema.');
            }
        }

        $em->persist($bitacora);
        $em->persist($persona);
        $em->flush();

        return $this->redirectToRoute('noticia_correo_usuarios');
    }
}
