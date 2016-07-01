<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\ParticipacionComunitaria;
use SICBundle\Form\ParticipacionComunitariaType;

/**
 * ParticipacionComunitaria controller.
 *
 */
class ParticipacionComunitariaController extends Controller
{
    /**
     * Lists all ParticipacionComunitaria entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $participacionComunitarias = $em->getRepository('SICBundle:ParticipacionComunitaria')->findAll();

        return $this->render('participacioncomunitaria/index.html.twig', array(
            'participacionComunitarias' => $participacionComunitarias,
        ));
    }

    /**
     * Creates a new ParticipacionComunitaria entity.
     *
     */
    public function newAction(Request $request, $id_planilla)
    {
        $participacionComunitarium = new ParticipacionComunitaria();
        $form = $this->createForm('SICBundle\Form\ParticipacionComunitariaType', $participacionComunitarium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($participacionComunitarium);
            $planilla = $em->getRepository('SICBundle:Planillas')->findById($id_planilla);
            $p = $planilla[0];
            $p->setParticipacionComunitaria($participacionComunitarium);
            $em->persist($p);
            $em->flush();

            return $this->redirectToRoute('situacioncomunidad_new', array('id_planilla' => $id_planilla));
        }

        return $this->render('participacioncomunitaria/new.html.twig', array(
            'participacionComunitarium' => $participacionComunitarium,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a ParticipacionComunitaria entity.
     *
     */
    public function showAction(ParticipacionComunitaria $participacionComunitarium)
    {
        $deleteForm = $this->createDeleteForm($participacionComunitarium);

        return $this->render('participacioncomunitaria/show.html.twig', array(
            'participacionComunitarium' => $participacionComunitarium,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing ParticipacionComunitaria entity.
     *
     */
    public function editAction(Request $request, ParticipacionComunitaria $participacionComunitarium)
    {
        $deleteForm = $this->createDeleteForm($participacionComunitarium);
        $editForm = $this->createForm('SICBundle\Form\ParticipacionComunitariaType', $participacionComunitarium);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($participacionComunitarium);
            $em->flush();

            return $this->redirectToRoute('participacioncomunitaria_edit', array('id' => $participacionComunitarium->getId()));
        }

        return $this->render('participacioncomunitaria/edit.html.twig', array(
            'participacionComunitarium' => $participacionComunitarium,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a ParticipacionComunitaria entity.
     *
     */
    public function deleteAction(Request $request, ParticipacionComunitaria $participacionComunitarium)
    {
        $form = $this->createDeleteForm($participacionComunitarium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($participacionComunitarium);
            $em->flush();
        }

        return $this->redirectToRoute('participacioncomunitaria_index');
    }

    /**
     * Creates a form to delete a ParticipacionComunitaria entity.
     *
     * @param ParticipacionComunitaria $participacionComunitarium The ParticipacionComunitaria entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(ParticipacionComunitaria $participacionComunitarium)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('participacioncomunitaria_delete', array('id' => $participacionComunitarium->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
