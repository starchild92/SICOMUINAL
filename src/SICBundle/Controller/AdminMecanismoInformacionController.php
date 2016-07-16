<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminMecanismoInformacion;
use SICBundle\Form\AdminMecanismoInformacionType;

/**
 * AdminMecanismoInformacion controller.
 *
 */
class AdminMecanismoInformacionController extends Controller
{
    /**
     * Lists all AdminMecanismoInformacion entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminMecanismoInformacions = $em->getRepository('SICBundle:AdminMecanismoInformacion')->findAll();

        return $this->render('adminmecanismoinformacion/index.html.twig', array(
            'adminMecanismoInformacions' => $adminMecanismoInformacions,
        ));
    }

    /**
     * Creates a new AdminMecanismoInformacion entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminMecanismoInformacion = new AdminMecanismoInformacion();
        $form = $this->createForm('SICBundle\Form\AdminMecanismoInformacionType', $adminMecanismoInformacion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminMecanismoInformacion);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'mecanismoinformacion'));
            // return $this->redirectToRoute('configurables_tipo_mecanismo_informacion_show', array('id' => $adminMecanismoInformacion->getId()));
        }

        return $this->render('adminmecanismoinformacion/new.html.twig', array(
            'adminMecanismoInformacion' => $adminMecanismoInformacion,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminMecanismoInformacion entity.
     *
     */
    public function showAction(AdminMecanismoInformacion $adminMecanismoInformacion)
    {
        $deleteForm = $this->createDeleteForm($adminMecanismoInformacion);

        return $this->render('adminmecanismoinformacion/show.html.twig', array(
            'adminMecanismoInformacion' => $adminMecanismoInformacion,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminMecanismoInformacion entity.
     *
     */
    public function editAction(Request $request, AdminMecanismoInformacion $adminMecanismoInformacion)
    {
        $deleteForm = $this->createDeleteForm($adminMecanismoInformacion);
        $editForm = $this->createForm('SICBundle\Form\AdminMecanismoInformacionType', $adminMecanismoInformacion);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminMecanismoInformacion);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'mecanismoinformacion'));
            // return $this->redirectToRoute('configurables_tipo_mecanismo_informacion_edit', array('id' => $adminMecanismoInformacion->getId()));
        }

        return $this->render('adminmecanismoinformacion/edit.html.twig', array(
            'adminMecanismoInformacion' => $adminMecanismoInformacion,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminMecanismoInformacion entity.
     *
     */
    public function deleteAction(Request $request, AdminMecanismoInformacion $adminMecanismoInformacion)
    {
        $form = $this->createDeleteForm($adminMecanismoInformacion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminMecanismoInformacion);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'mecanismoinformacion'));
        // return $this->redirectToRoute('configurables_tipo_mecanismo_informacion_index');
    }

    /**
     * Creates a form to delete a AdminMecanismoInformacion entity.
     *
     * @param AdminMecanismoInformacion $adminMecanismoInformacion The AdminMecanismoInformacion entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminMecanismoInformacion $adminMecanismoInformacion)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurables_tipo_mecanismo_informacion_delete', array('id' => $adminMecanismoInformacion->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
