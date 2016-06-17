<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Vivienda;
use SICBundle\Form\ViviendaType;

/**
 * Vivienda controller.
 *
 */
class ViviendaController extends Controller
{
    /**
     * Lists all Vivienda entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $viviendas = $em->getRepository('SICBundle:Vivienda')->findAll();

        return $this->render('vivienda/index.html.twig', array(
            'viviendas' => $viviendas,
        ));
    }

    /**
     * Creates a new Vivienda entity.
     *
     */
    public function newAction(Request $request)
    {
        $vivienda = new Vivienda();
        $form = $this->createForm('SICBundle\Form\ViviendaType', $vivienda);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($vivienda);
            $em->flush();

            return $this->redirectToRoute('vivienda_show', array('id' => $vivienda->getId()));
        }

        return $this->render('vivienda/new.html.twig', array(
            'vivienda' => $vivienda,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Vivienda entity.
     *
     */
    public function showAction(Vivienda $vivienda)
    {
        $deleteForm = $this->createDeleteForm($vivienda);

        return $this->render('vivienda/show.html.twig', array(
            'vivienda' => $vivienda,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Vivienda entity.
     *
     */
    public function editAction(Request $request, Vivienda $vivienda)
    {
        $deleteForm = $this->createDeleteForm($vivienda);
        $editForm = $this->createForm('SICBundle\Form\ViviendaType', $vivienda);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($vivienda);
            $em->flush();

            return $this->redirectToRoute('vivienda_edit', array('id' => $vivienda->getId()));
        }

        return $this->render('vivienda/edit.html.twig', array(
            'vivienda' => $vivienda,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Vivienda entity.
     *
     */
    public function deleteAction(Request $request, Vivienda $vivienda)
    {
        $form = $this->createDeleteForm($vivienda);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($vivienda);
            $em->flush();
        }

        return $this->redirectToRoute('vivienda_index');
    }

    /**
     * Creates a form to delete a Vivienda entity.
     *
     * @param Vivienda $vivienda The Vivienda entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Vivienda $vivienda)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('vivienda_delete', array('id' => $vivienda->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
