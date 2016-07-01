<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\SituacionVivienda;
use SICBundle\Form\SituacionViviendaType;

/**
 * SituacionVivienda controller.
 *
 */
class SituacionViviendaController extends Controller
{
    /**
     * Lists all SituacionVivienda entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $situacionViviendas = $em->getRepository('SICBundle:SituacionVivienda')->findAll();

        return $this->render('situacionvivienda/index.html.twig', array(
            'situacionViviendas' => $situacionViviendas,
        ));
    }

    /**
     * Creates a new SituacionVivienda entity.
     *
     */
    public function newAction(Request $request, $id_planilla)
    {
        $situacionVivienda = new SituacionVivienda();
        $form = $this->createForm('SICBundle\Form\SituacionViviendaType', $situacionVivienda);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionVivienda);
            $planilla = $em->getRepository('SICBundle:Planillas')->findById($id_planilla);
            $p = $planilla[0];
            $p->setSituacionVivienda($situacionVivienda);
            $em->persist($p);
            $em->flush();

            return $this->redirectToRoute('situacionsalud_new', array('id_planilla' => $id_planilla));
            // return $this->redirectToRoute('situacionvivienda_show', array('id' => $situacionVivienda->getId()));
        }

        return $this->render('situacionvivienda/new.html.twig', array(
            'situacionVivienda' => $situacionVivienda,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a SituacionVivienda entity.
     *
     */
    public function showAction(SituacionVivienda $situacionVivienda)
    {
        $deleteForm = $this->createDeleteForm($situacionVivienda);

        return $this->render('situacionvivienda/show.html.twig', array(
            'situacionVivienda' => $situacionVivienda,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing SituacionVivienda entity.
     *
     */
    public function editAction(Request $request, SituacionVivienda $situacionVivienda)
    {
        $deleteForm = $this->createDeleteForm($situacionVivienda);
        $editForm = $this->createForm('SICBundle\Form\SituacionViviendaType', $situacionVivienda);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionVivienda);
            $em->flush();

            return $this->redirectToRoute('situacionvivienda_edit', array('id' => $situacionVivienda->getId()));
        }

        return $this->render('situacionvivienda/edit.html.twig', array(
            'situacionVivienda' => $situacionVivienda,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a SituacionVivienda entity.
     *
     */
    public function deleteAction(Request $request, SituacionVivienda $situacionVivienda)
    {
        $form = $this->createDeleteForm($situacionVivienda);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($situacionVivienda);
            $em->flush();
        }

        return $this->redirectToRoute('situacionvivienda_index');
    }

    /**
     * Creates a form to delete a SituacionVivienda entity.
     *
     * @param SituacionVivienda $situacionVivienda The SituacionVivienda entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(SituacionVivienda $situacionVivienda)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('situacionvivienda_delete', array('id' => $situacionVivienda->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
