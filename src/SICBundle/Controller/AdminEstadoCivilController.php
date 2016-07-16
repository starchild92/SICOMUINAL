<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminEstadoCivil;
use SICBundle\Form\AdminEstadoCivilType;

/**
 * AdminEstadoCivil controller.
 *
 */
class AdminEstadoCivilController extends Controller
{
    /**
     * Lists all AdminEstadoCivil entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminEstadoCivils = $em->getRepository('SICBundle:AdminEstadoCivil')->findAll();

        return $this->render('adminestadocivil/index.html.twig', array(
            'adminEstadoCivils' => $adminEstadoCivils,
        ));
    }

    /**
     * Creates a new AdminEstadoCivil entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminEstadoCivil = new AdminEstadoCivil();
        $form = $this->createForm('SICBundle\Form\AdminEstadoCivilType', $adminEstadoCivil);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminEstadoCivil);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'estadocivil'));
            // return $this->redirectToRoute('configurable_estado_civil_show', array('id' => $adminEstadoCivil->getId()));
        }

        return $this->render('adminestadocivil/new.html.twig', array(
            'adminEstadoCivil' => $adminEstadoCivil,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminEstadoCivil entity.
     *
     */
    public function showAction(AdminEstadoCivil $adminEstadoCivil)
    {
        $deleteForm = $this->createDeleteForm($adminEstadoCivil);

        return $this->render('adminestadocivil/show.html.twig', array(
            'adminEstadoCivil' => $adminEstadoCivil,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminEstadoCivil entity.
     *
     */
    public function editAction(Request $request, AdminEstadoCivil $adminEstadoCivil)
    {
        $deleteForm = $this->createDeleteForm($adminEstadoCivil);
        $editForm = $this->createForm('SICBundle\Form\AdminEstadoCivilType', $adminEstadoCivil);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminEstadoCivil);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'estadocivil'));
            // return $this->redirectToRoute('configurable_estado_civil_edit', array('id' => $adminEstadoCivil->getId()));
        }

        return $this->render('adminestadocivil/edit.html.twig', array(
            'adminEstadoCivil' => $adminEstadoCivil,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminEstadoCivil entity.
     *
     */
    public function deleteAction(Request $request, AdminEstadoCivil $adminEstadoCivil)
    {
        $form = $this->createDeleteForm($adminEstadoCivil);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminEstadoCivil);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'estadocivil'));
        // return $this->redirectToRoute('configurable_estado_civil_index');
    }

    /**
     * Creates a form to delete a AdminEstadoCivil entity.
     *
     * @param AdminEstadoCivil $adminEstadoCivil The AdminEstadoCivil entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminEstadoCivil $adminEstadoCivil)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_estado_civil_delete', array('id' => $adminEstadoCivil->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
