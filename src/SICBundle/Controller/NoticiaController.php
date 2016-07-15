<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Noticia;
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
        $usuarios_reciben_correo = $em->getRepository('SICBundle:Noticia')->CantidadPersonasCorreo();

        return $this->render('noticia/index.html.twig', array(
            'noticias' => $noticias,
            'reciben_correo' => $usuarios_reciben_correo,
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

            $em->persist($noticium);
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
            $em->remove($noticium);
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
            }else{
                // a visible
                $noticium->setVisibilidad('0');
                $this->get('session')->getFlashBag()->add('success', 'Se ha colocado la noticia "'.$noticium->getTitulo().'" como invisible.');
            }
            $em->persist($noticium);
            $em->flush();

            return $this->redirectToRoute('noticia_index');
        }

        return $this->redirectToRoute('sic_homepage');
    }
}
