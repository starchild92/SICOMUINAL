<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminUbicacionTrabajo;
use SICBundle\Form\AdminUbicacionTrabajoType;

/**
 * AdminUbicacionTrabajo controller.
 *
 */
class AdminUbicacionTrabajoController extends Controller
{
    /**
     * Lists all AdminUbicacionTrabajo entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminUbicacionTrabajos = $em->getRepository('SICBundle:AdminUbicacionTrabajo')->findAll();

        return $this->render('adminubicaciontrabajo/index.html.twig', array(
            'adminUbicacionTrabajos' => $adminUbicacionTrabajos,
        ));
    }

    /**
     * Creates a new AdminUbicacionTrabajo entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminUbicacionTrabajo = new AdminUbicacionTrabajo();
        $form = $this->createForm('SICBundle\Form\AdminUbicacionTrabajoType', $adminUbicacionTrabajo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminUbicacionTrabajo);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'ubicaciontrabajo'));
            // return $this->redirectToRoute('configurable_ubicacion-trabajo_show', array('id' => $adminUbicacionTrabajo->getId()));
        }

        return $this->render('adminubicaciontrabajo/new.html.twig', array(
            'adminUbicacionTrabajo' => $adminUbicacionTrabajo,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminUbicacionTrabajo entity.
     *
     */
    public function showAction(AdminUbicacionTrabajo $adminUbicacionTrabajo)
    {
        $deleteForm = $this->createDeleteForm($adminUbicacionTrabajo);

        return $this->render('adminubicaciontrabajo/show.html.twig', array(
            'adminUbicacionTrabajo' => $adminUbicacionTrabajo,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminUbicacionTrabajo entity.
     *
     */
    public function editAction(Request $request, AdminUbicacionTrabajo $adminUbicacionTrabajo)
    {
        $deleteForm = $this->createDeleteForm($adminUbicacionTrabajo);
        $editForm = $this->createForm('SICBundle\Form\AdminUbicacionTrabajoType', $adminUbicacionTrabajo);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminUbicacionTrabajo);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'ubicaciontrabajo'));
            // return $this->redirectToRoute('configurable_ubicacion-trabajo_edit', array('id' => $adminUbicacionTrabajo->getId()));
        }

        return $this->render('adminubicaciontrabajo/edit.html.twig', array(
            'adminUbicacionTrabajo' => $adminUbicacionTrabajo,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminUbicacionTrabajo entity.
     *
     */
    public function deleteAction(Request $request, AdminUbicacionTrabajo $adminUbicacionTrabajo)
    {
        $form = $this->createDeleteForm($adminUbicacionTrabajo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminUbicacionTrabajo);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'ubicaciontrabajo'));
        // return $this->redirectToRoute('configurable_ubicacion-trabajo_index');
    }

    /**
     * Creates a form to delete a AdminUbicacionTrabajo entity.
     *
     * @param AdminUbicacionTrabajo $adminUbicacionTrabajo The AdminUbicacionTrabajo entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminUbicacionTrabajo $adminUbicacionTrabajo)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_ubicacion-trabajo_delete', array('id' => $adminUbicacionTrabajo->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
