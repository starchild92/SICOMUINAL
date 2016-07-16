<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminServiciosComunales;
use SICBundle\Form\AdminServiciosComunalesType;

/**
 * AdminServiciosComunales controller.
 *
 */
class AdminServiciosComunalesController extends Controller
{
    /**
     * Lists all AdminServiciosComunales entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminServiciosComunales = $em->getRepository('SICBundle:AdminServiciosComunales')->findAll();

        return $this->render('adminservicioscomunales/index.html.twig', array(
            'adminServiciosComunales' => $adminServiciosComunales,
        ));
    }

    /**
     * Creates a new AdminServiciosComunales entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminServiciosComunale = new AdminServiciosComunales();
        $form = $this->createForm('SICBundle\Form\AdminServiciosComunalesType', $adminServiciosComunale);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminServiciosComunale);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'servicioscomunales'));
            // return $this->redirectToRoute('configurables_tipos_servicios_comunales_show', array('id' => $adminServiciosComunale->getId()));
        }

        return $this->render('adminservicioscomunales/new.html.twig', array(
            'adminServiciosComunale' => $adminServiciosComunale,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminServiciosComunales entity.
     *
     */
    public function showAction(AdminServiciosComunales $adminServiciosComunale)
    {
        $deleteForm = $this->createDeleteForm($adminServiciosComunale);

        return $this->render('adminservicioscomunales/show.html.twig', array(
            'adminServiciosComunale' => $adminServiciosComunale,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminServiciosComunales entity.
     *
     */
    public function editAction(Request $request, AdminServiciosComunales $adminServiciosComunale)
    {
        $deleteForm = $this->createDeleteForm($adminServiciosComunale);
        $editForm = $this->createForm('SICBundle\Form\AdminServiciosComunalesType', $adminServiciosComunale);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminServiciosComunale);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'servicioscomunales'));
            // return $this->redirectToRoute('configurables_tipos_servicios_comunales_edit', array('id' => $adminServiciosComunale->getId()));
        }

        return $this->render('adminservicioscomunales/edit.html.twig', array(
            'adminServiciosComunale' => $adminServiciosComunale,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminServiciosComunales entity.
     *
     */
    public function deleteAction(Request $request, AdminServiciosComunales $adminServiciosComunale)
    {
        $form = $this->createDeleteForm($adminServiciosComunale);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminServiciosComunale);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'servicioscomunales'));
        // return $this->redirectToRoute('configurables_tipos_servicios_comunales_index');
    }

    /**
     * Creates a form to delete a AdminServiciosComunales entity.
     *
     * @param AdminServiciosComunales $adminServiciosComunale The AdminServiciosComunales entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminServiciosComunales $adminServiciosComunale)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurables_tipos_servicios_comunales_delete', array('id' => $adminServiciosComunale->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
