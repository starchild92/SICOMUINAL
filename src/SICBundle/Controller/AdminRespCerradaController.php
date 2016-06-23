<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminRespCerrada;
use SICBundle\Form\AdminRespCerradaType;

/**
 * AdminRespCerrada controller.
 *
 */
class AdminRespCerradaController extends Controller
{
    /**
     * Lists all AdminRespCerrada entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminRespCerradas = $em->getRepository('SICBundle:AdminRespCerrada')->findAll();

        return $this->render('adminrespcerrada/index.html.twig', array(
            'adminRespCerradas' => $adminRespCerradas,
        ));
    }

    /**
     * Creates a new AdminRespCerrada entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminRespCerrada = new AdminRespCerrada();
        $form = $this->createForm('SICBundle\Form\AdminRespCerradaType', $adminRespCerrada);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminRespCerrada);
            $em->flush();

            return $this->redirectToRoute('configurable_respuesta_cerrada_show', array('id' => $adminRespCerrada->getId()));
        }

        return $this->render('adminrespcerrada/new.html.twig', array(
            'adminRespCerrada' => $adminRespCerrada,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminRespCerrada entity.
     *
     */
    public function showAction(AdminRespCerrada $adminRespCerrada)
    {
        $deleteForm = $this->createDeleteForm($adminRespCerrada);

        return $this->render('adminrespcerrada/show.html.twig', array(
            'adminRespCerrada' => $adminRespCerrada,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminRespCerrada entity.
     *
     */
    public function editAction(Request $request, AdminRespCerrada $adminRespCerrada)
    {
        $deleteForm = $this->createDeleteForm($adminRespCerrada);
        $editForm = $this->createForm('SICBundle\Form\AdminRespCerradaType', $adminRespCerrada);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminRespCerrada);
            $em->flush();

            return $this->redirectToRoute('configurable_respuesta_cerrada_edit', array('id' => $adminRespCerrada->getId()));
        }

        return $this->render('adminrespcerrada/edit.html.twig', array(
            'adminRespCerrada' => $adminRespCerrada,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminRespCerrada entity.
     *
     */
    public function deleteAction(Request $request, AdminRespCerrada $adminRespCerrada)
    {
        $form = $this->createDeleteForm($adminRespCerrada);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminRespCerrada);
            $em->flush();
        }

        return $this->redirectToRoute('configurable_respuesta_cerrada_index');
    }

    /**
     * Creates a form to delete a AdminRespCerrada entity.
     *
     * @param AdminRespCerrada $adminRespCerrada The AdminRespCerrada entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminRespCerrada $adminRespCerrada)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_respuesta_cerrada_delete', array('id' => $adminRespCerrada->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
