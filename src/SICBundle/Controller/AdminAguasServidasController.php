<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminAguasServidas;
use SICBundle\Form\AdminAguasServidasType;

/**
 * AdminAguasServidas controller.
 *
 */
class AdminAguasServidasController extends Controller
{
    /**
     * Lists all AdminAguasServidas entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminAguasServidas = $em->getRepository('SICBundle:AdminAguasServidas')->findAll();

        return $this->render('adminaguasservidas/index.html.twig', array(
            'adminAguasServidas' => $adminAguasServidas,
        ));
    }

    /**
     * Creates a new AdminAguasServidas entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminAguasServida = new AdminAguasServidas();
        $form = $this->createForm('SICBundle\Form\AdminAguasServidasType', $adminAguasServida);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminAguasServida);
            $em->flush();

            return $this->redirectToRoute('configurables_tipos_aguas_servidas_show', array('id' => $adminAguasServida->getId()));
        }

        return $this->render('adminaguasservidas/new.html.twig', array(
            'adminAguasServida' => $adminAguasServida,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminAguasServidas entity.
     *
     */
    public function showAction(AdminAguasServidas $adminAguasServida)
    {
        $deleteForm = $this->createDeleteForm($adminAguasServida);

        return $this->render('adminaguasservidas/show.html.twig', array(
            'adminAguasServida' => $adminAguasServida,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminAguasServidas entity.
     *
     */
    public function editAction(Request $request, AdminAguasServidas $adminAguasServida)
    {
        $deleteForm = $this->createDeleteForm($adminAguasServida);
        $editForm = $this->createForm('SICBundle\Form\AdminAguasServidasType', $adminAguasServida);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminAguasServida);
            $em->flush();

            return $this->redirectToRoute('configurables_tipos_aguas_servidas_edit', array('id' => $adminAguasServida->getId()));
        }

        return $this->render('adminaguasservidas/edit.html.twig', array(
            'adminAguasServida' => $adminAguasServida,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminAguasServidas entity.
     *
     */
    public function deleteAction(Request $request, AdminAguasServidas $adminAguasServida)
    {
        $form = $this->createDeleteForm($adminAguasServida);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminAguasServida);
            $em->flush();
        }

        return $this->redirectToRoute('configurables_tipos_aguas_servidas_index');
    }

    /**
     * Creates a form to delete a AdminAguasServidas entity.
     *
     * @param AdminAguasServidas $adminAguasServida The AdminAguasServidas entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminAguasServidas $adminAguasServida)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurables_tipos_aguas_servidas_delete', array('id' => $adminAguasServida->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
