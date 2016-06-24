<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminTipoParedes;
use SICBundle\Form\AdminTipoParedesType;

/**
 * AdminTipoParedes controller.
 *
 */
class AdminTipoParedesController extends Controller
{
    /**
     * Lists all AdminTipoParedes entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminTipoParedes = $em->getRepository('SICBundle:AdminTipoParedes')->findAll();

        return $this->render('admintipoparedes/index.html.twig', array(
            'adminTipoParedes' => $adminTipoParedes,
        ));
    }

    /**
     * Creates a new AdminTipoParedes entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminTipoParede = new AdminTipoParedes();
        $form = $this->createForm('SICBundle\Form\AdminTipoParedesType', $adminTipoParede);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoParede);
            $em->flush();

            return $this->redirectToRoute('configurable_tipo_paredes_show', array('id' => $adminTipoParede->getId()));
        }

        return $this->render('admintipoparedes/new.html.twig', array(
            'adminTipoParede' => $adminTipoParede,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminTipoParedes entity.
     *
     */
    public function showAction(AdminTipoParedes $adminTipoParede)
    {
        $deleteForm = $this->createDeleteForm($adminTipoParede);

        return $this->render('admintipoparedes/show.html.twig', array(
            'adminTipoParede' => $adminTipoParede,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminTipoParedes entity.
     *
     */
    public function editAction(Request $request, AdminTipoParedes $adminTipoParede)
    {
        $deleteForm = $this->createDeleteForm($adminTipoParede);
        $editForm = $this->createForm('SICBundle\Form\AdminTipoParedesType', $adminTipoParede);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoParede);
            $em->flush();

            return $this->redirectToRoute('configurable_tipo_paredes_edit', array('id' => $adminTipoParede->getId()));
        }

        return $this->render('admintipoparedes/edit.html.twig', array(
            'adminTipoParede' => $adminTipoParede,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminTipoParedes entity.
     *
     */
    public function deleteAction(Request $request, AdminTipoParedes $adminTipoParede)
    {
        $form = $this->createDeleteForm($adminTipoParede);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminTipoParede);
            $em->flush();
        }

        return $this->redirectToRoute('configurable_tipo_paredes_index');
    }

    /**
     * Creates a form to delete a AdminTipoParedes entity.
     *
     * @param AdminTipoParedes $adminTipoParede The AdminTipoParedes entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminTipoParedes $adminTipoParede)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_tipo_paredes_delete', array('id' => $adminTipoParede->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
