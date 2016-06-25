<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminAreaTrabajoCC;
use SICBundle\Form\AdminAreaTrabajoCCType;

/**
 * AdminAreaTrabajoCC controller.
 *
 */
class AdminAreaTrabajoCCController extends Controller
{
    /**
     * Lists all AdminAreaTrabajoCC entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminAreaTrabajoCCs = $em->getRepository('SICBundle:AdminAreaTrabajoCC')->findAll();

        return $this->render('adminareatrabajocc/index.html.twig', array(
            'adminAreaTrabajoCCs' => $adminAreaTrabajoCCs,
        ));
    }

    /**
     * Creates a new AdminAreaTrabajoCC entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminAreaTrabajoCC = new AdminAreaTrabajoCC();
        $form = $this->createForm('SICBundle\Form\AdminAreaTrabajoCCType', $adminAreaTrabajoCC);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminAreaTrabajoCC);
            $em->flush();

            return $this->redirectToRoute('configurables_tipos_areas_trabajo_show', array('id' => $adminAreaTrabajoCC->getId()));
        }

        return $this->render('adminareatrabajocc/new.html.twig', array(
            'adminAreaTrabajoCC' => $adminAreaTrabajoCC,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminAreaTrabajoCC entity.
     *
     */
    public function showAction(AdminAreaTrabajoCC $adminAreaTrabajoCC)
    {
        $deleteForm = $this->createDeleteForm($adminAreaTrabajoCC);

        return $this->render('adminareatrabajocc/show.html.twig', array(
            'adminAreaTrabajoCC' => $adminAreaTrabajoCC,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminAreaTrabajoCC entity.
     *
     */
    public function editAction(Request $request, AdminAreaTrabajoCC $adminAreaTrabajoCC)
    {
        $deleteForm = $this->createDeleteForm($adminAreaTrabajoCC);
        $editForm = $this->createForm('SICBundle\Form\AdminAreaTrabajoCCType', $adminAreaTrabajoCC);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminAreaTrabajoCC);
            $em->flush();

            return $this->redirectToRoute('configurables_tipos_areas_trabajo_edit', array('id' => $adminAreaTrabajoCC->getId()));
        }

        return $this->render('adminareatrabajocc/edit.html.twig', array(
            'adminAreaTrabajoCC' => $adminAreaTrabajoCC,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminAreaTrabajoCC entity.
     *
     */
    public function deleteAction(Request $request, AdminAreaTrabajoCC $adminAreaTrabajoCC)
    {
        $form = $this->createDeleteForm($adminAreaTrabajoCC);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminAreaTrabajoCC);
            $em->flush();
        }

        return $this->redirectToRoute('configurables_tipos_areas_trabajo_index');
    }

    /**
     * Creates a form to delete a AdminAreaTrabajoCC entity.
     *
     * @param AdminAreaTrabajoCC $adminAreaTrabajoCC The AdminAreaTrabajoCC entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminAreaTrabajoCC $adminAreaTrabajoCC)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurables_tipos_areas_trabajo_delete', array('id' => $adminAreaTrabajoCC->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
