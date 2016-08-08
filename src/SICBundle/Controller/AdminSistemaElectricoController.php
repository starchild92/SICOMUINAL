<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Bitacora;
use SICBundle\Entity\AdminSistemaElectrico;
use SICBundle\Form\AdminSistemaElectricoType;

/**
 * AdminSistemaElectrico controller.
 *
 */
class AdminSistemaElectricoController extends Controller
{
    /**
     * Lists all AdminSistemaElectrico entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminSistemaElectricos = $em->getRepository('SICBundle:AdminSistemaElectrico')->findAll();

        return $this->render('adminsistemaelectrico/index.html.twig', array(
            'adminSistemaElectricos' => $adminSistemaElectricos,
        ));
    }

    /**
     * Creates a new AdminSistemaElectrico entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminSistemaElectrico = new AdminSistemaElectrico();
        $form = $this->createForm('SICBundle\Form\AdminSistemaElectricoType', $adminSistemaElectrico);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminSistemaElectrico);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'sistemaelectrico'));
            // return $this->redirectToRoute('configurables_tipo_sistema_electrico_show', array('id' => $adminSistemaElectrico->getId()));
        }

        return $this->render('adminsistemaelectrico/new.html.twig', array(
            'adminSistemaElectrico' => $adminSistemaElectrico,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminSistemaElectrico entity.
     *
     */
    public function showAction(AdminSistemaElectrico $adminSistemaElectrico)
    {
        $deleteForm = $this->createDeleteForm($adminSistemaElectrico);

        return $this->render('adminsistemaelectrico/show.html.twig', array(
            'adminSistemaElectrico' => $adminSistemaElectrico,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminSistemaElectrico entity.
     *
     */
    public function editAction(Request $request, AdminSistemaElectrico $adminSistemaElectrico)
    {
        $deleteForm = $this->createDeleteForm($adminSistemaElectrico);
        $editForm = $this->createForm('SICBundle\Form\AdminSistemaElectricoType', $adminSistemaElectrico);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminSistemaElectrico);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'sistemaelectrico'));
            // return $this->redirectToRoute('configurables_tipo_sistema_electrico_edit', array('id' => $adminSistemaElectrico->getId()));
        }

        return $this->render('adminsistemaelectrico/edit.html.twig', array(
            'adminSistemaElectrico' => $adminSistemaElectrico,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminSistemaElectrico entity.
     *
     */
    public function deleteAction(Request $request, AdminSistemaElectrico $adminSistemaElectrico)
    {
        $form = $this->createDeleteForm($adminSistemaElectrico);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminSistemaElectrico);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'sistemaelectrico'));
        // return $this->redirectToRoute('configurables_tipo_sistema_electrico_index');
    }

    /**
     * Creates a form to delete a AdminSistemaElectrico entity.
     *
     * @param AdminSistemaElectrico $adminSistemaElectrico The AdminSistemaElectrico entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminSistemaElectrico $adminSistemaElectrico)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurables_tipo_sistema_electrico_delete', array('id' => $adminSistemaElectrico->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
