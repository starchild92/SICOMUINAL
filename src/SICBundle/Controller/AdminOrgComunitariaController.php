<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminOrgComunitaria;
use SICBundle\Form\AdminOrgComunitariaType;

/**
 * AdminOrgComunitaria controller.
 *
 */
class AdminOrgComunitariaController extends Controller
{
    /**
     * Lists all AdminOrgComunitaria entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminOrgComunitarias = $em->getRepository('SICBundle:AdminOrgComunitaria')->findAll();

        return $this->render('adminorgcomunitaria/index.html.twig', array(
            'adminOrgComunitarias' => $adminOrgComunitarias,
        ));
    }

    /**
     * Creates a new AdminOrgComunitaria entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminOrgComunitarium = new AdminOrgComunitaria();
        $form = $this->createForm('SICBundle\Form\AdminOrgComunitariaType', $adminOrgComunitarium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminOrgComunitarium);
            $em->flush();

            return $this->redirectToRoute('configurables_tipos_organizaciones_comunitarias_show', array('id' => $adminOrgComunitarium->getId()));
        }

        return $this->render('adminorgcomunitaria/new.html.twig', array(
            'adminOrgComunitarium' => $adminOrgComunitarium,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminOrgComunitaria entity.
     *
     */
    public function showAction(AdminOrgComunitaria $adminOrgComunitarium)
    {
        $deleteForm = $this->createDeleteForm($adminOrgComunitarium);

        return $this->render('adminorgcomunitaria/show.html.twig', array(
            'adminOrgComunitarium' => $adminOrgComunitarium,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminOrgComunitaria entity.
     *
     */
    public function editAction(Request $request, AdminOrgComunitaria $adminOrgComunitarium)
    {
        $deleteForm = $this->createDeleteForm($adminOrgComunitarium);
        $editForm = $this->createForm('SICBundle\Form\AdminOrgComunitariaType', $adminOrgComunitarium);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminOrgComunitarium);
            $em->flush();

            return $this->redirectToRoute('configurables_tipos_organizaciones_comunitarias_edit', array('id' => $adminOrgComunitarium->getId()));
        }

        return $this->render('adminorgcomunitaria/edit.html.twig', array(
            'adminOrgComunitarium' => $adminOrgComunitarium,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminOrgComunitaria entity.
     *
     */
    public function deleteAction(Request $request, AdminOrgComunitaria $adminOrgComunitarium)
    {
        $form = $this->createDeleteForm($adminOrgComunitarium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminOrgComunitarium);
            $em->flush();
        }

        return $this->redirectToRoute('configurables_tipos_organizaciones_comunitarias_index');
    }

    /**
     * Creates a form to delete a AdminOrgComunitaria entity.
     *
     * @param AdminOrgComunitaria $adminOrgComunitarium The AdminOrgComunitaria entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminOrgComunitaria $adminOrgComunitarium)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurables_tipos_organizaciones_comunitarias_delete', array('id' => $adminOrgComunitarium->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
