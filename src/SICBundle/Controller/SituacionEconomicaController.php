<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\SituacionEconomica;
use SICBundle\Form\SituacionEconomicaType;

/**
 * SituacionEconomica controller.
 *
 */
class SituacionEconomicaController extends Controller
{
    /**
     * Lists all SituacionEconomica entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $situacionEconomicas = $em->getRepository('SICBundle:SituacionEconomica')->findAll();

        return $this->render('situacioneconomica/index.html.twig', array(
            'situacionEconomicas' => $situacionEconomicas,
        ));
    }

    /**
     * Creates a new SituacionEconomica entity.
     *
     */
    public function newAction(Request $request)
    {
        $situacionEconomica = new SituacionEconomica();
        $form = $this->createForm('SICBundle\Form\SituacionEconomicaType', $situacionEconomica);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionEconomica);
            $em->flush();

            return $this->redirectToRoute('situacioneconomica_show', array('id' => $situacionEconomica->getId()));
        }

        return $this->render('situacioneconomica/new.html.twig', array(
            'situacionEconomica' => $situacionEconomica,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a SituacionEconomica entity.
     *
     */
    public function showAction(SituacionEconomica $situacionEconomica)
    {
        $deleteForm = $this->createDeleteForm($situacionEconomica);

        return $this->render('situacioneconomica/show.html.twig', array(
            'situacionEconomica' => $situacionEconomica,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing SituacionEconomica entity.
     *
     */
    public function editAction(Request $request, SituacionEconomica $situacionEconomica)
    {
        $deleteForm = $this->createDeleteForm($situacionEconomica);
        $editForm = $this->createForm('SICBundle\Form\SituacionEconomicaType', $situacionEconomica);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionEconomica);
            $em->flush();

            return $this->redirectToRoute('situacioneconomica_edit', array('id' => $situacionEconomica->getId()));
        }

        return $this->render('situacioneconomica/edit.html.twig', array(
            'situacionEconomica' => $situacionEconomica,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a SituacionEconomica entity.
     *
     */
    public function deleteAction(Request $request, SituacionEconomica $situacionEconomica)
    {
        $form = $this->createDeleteForm($situacionEconomica);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($situacionEconomica);
            $em->flush();
        }

        return $this->redirectToRoute('situacioneconomica_index');
    }

    /**
     * Creates a form to delete a SituacionEconomica entity.
     *
     * @param SituacionEconomica $situacionEconomica The SituacionEconomica entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(SituacionEconomica $situacionEconomica)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('situacioneconomica_delete', array('id' => $situacionEconomica->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
