<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminTipoTenencia;
use SICBundle\Form\AdminTipoTenenciaType;

/**
 * AdminTipoTenencia controller.
 *
 */
class AdminTipoTenenciaController extends Controller
{
    /**
     * Lists all AdminTipoTenencia entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminTipoTenencias = $em->getRepository('SICBundle:AdminTipoTenencia')->findAll();

        return $this->render('admintipotenencia/index.html.twig', array(
            'adminTipoTenencias' => $adminTipoTenencias,
        ));
    }

    /**
     * Creates a new AdminTipoTenencia entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminTipoTenencium = new AdminTipoTenencia();
        $form = $this->createForm('SICBundle\Form\AdminTipoTenenciaType', $adminTipoTenencium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoTenencium);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipotenencia'));
            // return $this->redirectToRoute('configurable_tipo_tenencia_show', array('id' => $adminTipoTenencium->getId()));
        }

        return $this->render('admintipotenencia/new.html.twig', array(
            'adminTipoTenencium' => $adminTipoTenencium,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminTipoTenencia entity.
     *
     */
    public function showAction(AdminTipoTenencia $adminTipoTenencium)
    {
        $deleteForm = $this->createDeleteForm($adminTipoTenencium);

        return $this->render('admintipotenencia/show.html.twig', array(
            'adminTipoTenencium' => $adminTipoTenencium,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminTipoTenencia entity.
     *
     */
    public function editAction(Request $request, AdminTipoTenencia $adminTipoTenencium)
    {
        $deleteForm = $this->createDeleteForm($adminTipoTenencium);
        $editForm = $this->createForm('SICBundle\Form\AdminTipoTenenciaType', $adminTipoTenencium);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoTenencium);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipotenencia'));
            // return $this->redirectToRoute('configurable_tipo_tenencia_edit', array('id' => $adminTipoTenencium->getId()));
        }

        return $this->render('admintipotenencia/edit.html.twig', array(
            'adminTipoTenencium' => $adminTipoTenencium,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminTipoTenencia entity.
     *
     */
    public function deleteAction(Request $request, AdminTipoTenencia $adminTipoTenencium)
    {
        $form = $this->createDeleteForm($adminTipoTenencium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminTipoTenencium);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipotenencia'));
        // return $this->redirectToRoute('configurable_tipo_tenencia_index');
    }

    /**
     * Creates a form to delete a AdminTipoTenencia entity.
     *
     * @param AdminTipoTenencia $adminTipoTenencium The AdminTipoTenencia entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminTipoTenencia $adminTipoTenencium)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_tipo_tenencia_delete', array('id' => $adminTipoTenencium->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
