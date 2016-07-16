<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminVentaVivienda;
use SICBundle\Form\AdminVentaViviendaType;

/**
 * AdminVentaVivienda controller.
 *
 */
class AdminVentaViviendaController extends Controller
{
    /**
     * Lists all AdminVentaVivienda entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminVentaViviendas = $em->getRepository('SICBundle:AdminVentaVivienda')->findAll();

        return $this->render('adminventavivienda/index.html.twig', array(
            'adminVentaViviendas' => $adminVentaViviendas,
        ));
    }

    /**
     * Creates a new AdminVentaVivienda entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminVentaVivienda = new AdminVentaVivienda();
        $form = $this->createForm('SICBundle\Form\AdminVentaViviendaType', $adminVentaVivienda);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminVentaVivienda);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'ventavivienda'));
            // return $this->redirectToRoute('configurable_venta_vivenda_show', array('id' => $adminVentaVivienda->getId()));
        }

        return $this->render('adminventavivienda/new.html.twig', array(
            'adminVentaVivienda' => $adminVentaVivienda,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminVentaVivienda entity.
     *
     */
    public function showAction(AdminVentaVivienda $adminVentaVivienda)
    {
        $deleteForm = $this->createDeleteForm($adminVentaVivienda);

        return $this->render('adminventavivienda/show.html.twig', array(
            'adminVentaVivienda' => $adminVentaVivienda,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminVentaVivienda entity.
     *
     */
    public function editAction(Request $request, AdminVentaVivienda $adminVentaVivienda)
    {
        $deleteForm = $this->createDeleteForm($adminVentaVivienda);
        $editForm = $this->createForm('SICBundle\Form\AdminVentaViviendaType', $adminVentaVivienda);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminVentaVivienda);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'ventavivienda'));
            // return $this->redirectToRoute('configurable_venta_vivenda_edit', array('id' => $adminVentaVivienda->getId()));
        }

        return $this->render('adminventavivienda/edit.html.twig', array(
            'adminVentaVivienda' => $adminVentaVivienda,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminVentaVivienda entity.
     *
     */
    public function deleteAction(Request $request, AdminVentaVivienda $adminVentaVivienda)
    {
        $form = $this->createDeleteForm($adminVentaVivienda);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminVentaVivienda);
            $em->flush();
        }

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'ventavivienda'));
        // return $this->redirectToRoute('configurable_venta_vivenda_index');
    }

    /**
     * Creates a form to delete a AdminVentaVivienda entity.
     *
     * @param AdminVentaVivienda $adminVentaVivienda The AdminVentaVivienda entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminVentaVivienda $adminVentaVivienda)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_venta_vivenda_delete', array('id' => $adminVentaVivienda->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
