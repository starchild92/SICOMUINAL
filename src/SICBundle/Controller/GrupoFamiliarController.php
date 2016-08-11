<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\GrupoFamiliar;
use SICBundle\Entity\Bitacora;
use SICBundle\Form\GrupoFamiliarType;

/**
 * GrupoFamiliar controller.
 *
 */
class GrupoFamiliarController extends Controller
{
    /**
     * Lists all GrupoFamiliar entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $grupoFamiliars = $em->getRepository('SICBundle:GrupoFamiliar')->findAll();

        return $this->render('grupofamiliar/index.html.twig', array(
            'grupoFamiliars' => $grupoFamiliars,
        ));
    }

    /**
     * Creates a new GrupoFamiliar entity.
     *
     */
    public function newAction(Request $request, $id_planilla)
    {
        /*Redireccionar cuando se accede por GET y evitar que se cree una nueva para la misma planilla*/
        $em = $this->getDoctrine()->getManager();
        $planilla = $em->getRepository('SICBundle:Planillas')->findById($id_planilla);
        if (sizeof($planilla) > 0) {
            $p = $planilla[0];

            if($p->getGrupoFamiliar() != NULL){
                $this->get('session')->getFlashBag()
                ->add('error', 'Seleccione la sección que desea modificar');
                return $this->redirectToRoute('planillas_show', array('id' => $id_planilla));
            }

            $grupoFamiliar = new GrupoFamiliar();
            $form = $this->createForm('SICBundle\Form\GrupoFamiliarType', $grupoFamiliar);
            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                $grupoFamiliar->setCantidadMiembros(0);
                $p->setGrupoFamiliar($grupoFamiliar);
                $em->persist($grupoFamiliar);
                $em->persist($p);
                $this->get('session')->getFlashBag()->add('success', 'Se ha creado un Grupo Familiar');
                $bitacora = new Bitacora($this->getUser(),'agregó','un Grupo Familiar');
                $em->persist($bitacora);
                $em->flush();

                return $this->redirectToRoute('personas_new', array(
                    'id_planilla' => $id_planilla,
                    'id_grupofamiliar' => $grupoFamiliar->getId()));
                // return $this->redirectToRoute('grupofamiliar_show', array('id' => $grupoFamiliar->getId()));
            }

            return $this->render('grupofamiliar/new.html.twig', array(
                'grupoFamiliar' => $grupoFamiliar,
                'form' => $form->createView(),
            ));
        }
        
        $this->get('session')->getFlashBag()->add('danger', 'Operación no permitida.');
        return $this->redirectToRoute('planillas_index');
    }

    /**
     * Finds and displays a GrupoFamiliar entity.
     *
     */
    public function showAction(GrupoFamiliar $grupoFamiliar)
    {
        $deleteForm = $this->createDeleteForm($grupoFamiliar);

        return $this->render('grupofamiliar/show.html.twig', array(
            'grupoFamiliar' => $grupoFamiliar,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing GrupoFamiliar entity.
     *
     */
    public function editAction(Request $request, GrupoFamiliar $grupoFamiliar)
    {
        $deleteForm = $this->createDeleteForm($grupoFamiliar);
        $editForm = $this->createForm('SICBundle\Form\GrupoFamiliarType', $grupoFamiliar);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($grupoFamiliar);

            $bitacora = new Bitacora($this->getUser(),'modificó','un Grupo Familiar');
            $em->persist($bitacora);
            $em->flush();

            $this->get('session')->getFlashBag()
            ->add('success', 'Se ha modificado la información del Grupo Familiar de forma exitosa');
            return $this->redirectToRoute('planillas_show', array('id' => $grupoFamiliar->getPlanilla()->getId()));
        }

        return $this->render('grupofamiliar/edit.html.twig', array(
            'grupoFamiliar' => $grupoFamiliar,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a GrupoFamiliar entity.
     *
     */
    public function deleteAction(Request $request, GrupoFamiliar $grupoFamiliar)
    {
        $form = $this->createDeleteForm($grupoFamiliar);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($grupoFamiliar);
            $this->get('session')->getFlashBag()->add('success', 'Se ha eliminado la información del Grupo Familiar de forma exitosa.');
            $bitacora = new Bitacora($this->getUser(),'eliminó','la información del Grupo Familiar.');
            $em->persist($bitacora);
            $em->flush();
        }

        return $this->redirectToRoute('grupofamiliar_index');
    }

    /**
     * Creates a form to delete a GrupoFamiliar entity.
     *
     * @param GrupoFamiliar $grupoFamiliar The GrupoFamiliar entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(GrupoFamiliar $grupoFamiliar)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('grupofamiliar_delete', array('id' => $grupoFamiliar->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
