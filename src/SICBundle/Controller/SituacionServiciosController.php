<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\SituacionServicios;
use SICBundle\Form\SituacionServiciosType;

/**
 * SituacionServicios controller.
 *
 */
class SituacionServiciosController extends Controller
{
    /**
     * Lists all SituacionServicios entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $situacionServicios = $em->getRepository('SICBundle:SituacionServicios')->findAll();

        return $this->render('situacionservicios/index.html.twig', array(
            'situacionServicios' => $situacionServicios,
        ));
    }

    /**
     * Creates a new SituacionServicios entity.
     *
     */
    public function newAction(Request $request, $id_planilla)
    {
        $situacionServicio = new SituacionServicios();
        $form = $this->createForm('SICBundle\Form\SituacionServiciosType', $situacionServicio);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionServicio);
            $planilla = $em->getRepository('SICBundle:Planillas')->findById($id_planilla);
            $p = $planilla[0];
            $p->setSituacionServicios($situacionServicio);
            $em->persist($p);
            $em->flush();

            return $this->redirectToRoute('participacioncomunitaria_new', array('id_planilla' => $id_planilla));
        }

        return $this->render('situacionservicios/new.html.twig', array(
            'situacionServicio' => $situacionServicio,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a SituacionServicios entity.
     *
     */
    public function showAction(SituacionServicios $situacionServicio)
    {
        $deleteForm = $this->createDeleteForm($situacionServicio);

        return $this->render('situacionservicios/show.html.twig', array(
            'situacionServicio' => $situacionServicio,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing SituacionServicios entity.
     *
     */
    public function editAction(Request $request, SituacionServicios $situacionServicio)
    {
        $deleteForm = $this->createDeleteForm($situacionServicio);
        $editForm = $this->createForm('SICBundle\Form\SituacionServiciosType', $situacionServicio);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionServicio);
            $em->flush();

            return $this->redirectToRoute('situacionservicios_edit', array('id' => $situacionServicio->getId()));
        }

        return $this->render('situacionservicios/edit.html.twig', array(
            'situacionServicio' => $situacionServicio,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a SituacionServicios entity.
     *
     */
    public function deleteAction(Request $request, SituacionServicios $situacionServicio)
    {
        $form = $this->createDeleteForm($situacionServicio);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($situacionServicio);
            $em->flush();
        }

        return $this->redirectToRoute('situacionservicios_index');
    }

    /**
     * Creates a form to delete a SituacionServicios entity.
     *
     * @param SituacionServicios $situacionServicio The SituacionServicios entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(SituacionServicios $situacionServicio)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('situacionservicios_delete', array('id' => $situacionServicio->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
