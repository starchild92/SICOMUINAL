<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\SituacionSalud;
use SICBundle\Form\SituacionSaludType;

/**
 * SituacionSalud controller.
 *
 */
class SituacionSaludController extends Controller
{
    /**
     * Lists all SituacionSalud entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $situacionSaluds = $em->getRepository('SICBundle:SituacionSalud')->findAll();

        return $this->render('situacionsalud/index.html.twig', array(
            'situacionSaluds' => $situacionSaluds,
        ));
    }

    /**
     * Creates a new SituacionSalud entity.
     *
     */
    public function newAction(Request $request, $id_planilla)
    {
        $situacionSalud = new SituacionSalud();
        $form = $this->createForm('SICBundle\Form\SituacionSaludType', $situacionSalud);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionSalud);
            $planilla = $em->getRepository('SICBundle:Planillas')->findById($id_planilla);
            $p = $planilla[0];
            $p->setSituacionSalud($situacionSalud);
            $em->persist($p);
            $em->flush();

            return $this->redirectToRoute('situacionservicios_new', array('id_planilla' => $id_planilla));
        }

        return $this->render('situacionsalud/new.html.twig', array(
            'situacionSalud' => $situacionSalud,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a SituacionSalud entity.
     *
     */
    public function showAction(SituacionSalud $situacionSalud)
    {
        $deleteForm = $this->createDeleteForm($situacionSalud);

        return $this->render('situacionsalud/show.html.twig', array(
            'situacionSalud' => $situacionSalud,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing SituacionSalud entity.
     *
     */
    public function editAction(Request $request, SituacionSalud $situacionSalud)
    {
        $deleteForm = $this->createDeleteForm($situacionSalud);
        $editForm = $this->createForm('SICBundle\Form\SituacionSaludType', $situacionSalud);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionSalud);
            $em->flush();

            return $this->redirectToRoute('situacionsalud_edit', array('id' => $situacionSalud->getId()));
        }

        return $this->render('situacionsalud/edit.html.twig', array(
            'situacionSalud' => $situacionSalud,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a SituacionSalud entity.
     *
     */
    public function deleteAction(Request $request, SituacionSalud $situacionSalud)
    {
        $form = $this->createDeleteForm($situacionSalud);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($situacionSalud);
            $em->flush();
        }

        return $this->redirectToRoute('situacionsalud_index');
    }

    /**
     * Creates a form to delete a SituacionSalud entity.
     *
     * @param SituacionSalud $situacionSalud The SituacionSalud entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(SituacionSalud $situacionSalud)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('situacionsalud_delete', array('id' => $situacionSalud->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
