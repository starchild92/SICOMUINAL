<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Planillas;
use SICBundle\Form\PlanillasType;

/**
 * Planillas controller.
 *
 */
class PlanillasController extends Controller
{
    /**
     * Lists all Planillas entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $planillas = $em->getRepository('SICBundle:Planillas')->findAll();

        return $this->render('planillas/index.html.twig', array(
            'planillas' => $planillas,
        ));
    }

    /**
     * Creates a new Planillas entity.
     *
     */
    public function newAction(Request $request)
    {
        $planilla = new Planillas();
        $form = $this->createForm('SICBundle\Form\PlanillasType', $planilla);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            //Colocando el empadronador
            $planilla->setEmpadronador($this->getUser());

            $em->persist($planilla);
            $em->flush();

            return $this->redirectToRoute('planillas_show', array('id' => $planilla->getId()));
        }

        return $this->render('planillas/new.html.twig', array(
            'planilla' => $planilla,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Planillas entity.
     *
     */
    public function showAction(Planillas $planilla)
    {
        $deleteForm = $this->createDeleteForm($planilla);

        return $this->render('planillas/show.html.twig', array(
            'planilla' => $planilla,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Planillas entity.
     *
     */
    public function editAction(Request $request, Planillas $planilla)
    {
        $deleteForm = $this->createDeleteForm($planilla);
        $editForm = $this->createForm('SICBundle\Form\PlanillasType', $planilla);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($planilla);
            $em->flush();

            return $this->redirectToRoute('planillas_edit', array('id' => $planilla->getId()));
        }

        return $this->render('planillas/edit.html.twig', array(
            'planilla' => $planilla,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Planillas entity.
     *
     */
    public function deleteAction(Request $request, Planillas $planilla)
    {
        $form = $this->createDeleteForm($planilla);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($planilla);
            $em->flush();
        }

        return $this->redirectToRoute('planillas_index');
    }

    /**
     * Creates a form to delete a Planillas entity.
     *
     * @param Planillas $planilla The Planillas entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Planillas $planilla)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('planillas_delete', array('id' => $planilla->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
