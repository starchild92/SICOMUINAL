<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\GrupoFamiliar;
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
    public function newAction(Request $request)
    {
        $grupoFamiliar = new GrupoFamiliar();
        $form = $this->createForm('SICBundle\Form\GrupoFamiliarType', $grupoFamiliar);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($grupoFamiliar);
            $em->flush();

            return $this->redirectToRoute('grupofamiliar_show', array('id' => $grupoFamiliar->getId()));
        }

        return $this->render('grupofamiliar/new.html.twig', array(
            'grupoFamiliar' => $grupoFamiliar,
            'form' => $form->createView(),
        ));
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
            $em->flush();

            return $this->redirectToRoute('grupofamiliar_edit', array('id' => $grupoFamiliar->getId()));
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
