<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminTipoTelefonia;
use SICBundle\Form\AdminTipoTelefoniaType;

/**
 * AdminTipoTelefonia controller.
 *
 */
class AdminTipoTelefoniaController extends Controller
{
    /**
     * Lists all AdminTipoTelefonia entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminTipoTelefonias = $em->getRepository('SICBundle:AdminTipoTelefonia')->findAll();

        return $this->render('admintipotelefonia/index.html.twig', array(
            'adminTipoTelefonias' => $adminTipoTelefonias,
        ));
    }

    /**
     * Creates a new AdminTipoTelefonia entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminTipoTelefonium = new AdminTipoTelefonia();
        $form = $this->createForm('SICBundle\Form\AdminTipoTelefoniaType', $adminTipoTelefonium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoTelefonium);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipotelefonia'));
            // return $this->redirectToRoute('configurables_tipo_telefonia_show', array('id' => $adminTipoTelefonium->getId()));
        }

        return $this->render('admintipotelefonia/new.html.twig', array(
            'adminTipoTelefonium' => $adminTipoTelefonium,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminTipoTelefonia entity.
     *
     */
    public function showAction(AdminTipoTelefonia $adminTipoTelefonium)
    {
        $deleteForm = $this->createDeleteForm($adminTipoTelefonium);

        return $this->render('admintipotelefonia/show.html.twig', array(
            'adminTipoTelefonium' => $adminTipoTelefonium,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminTipoTelefonia entity.
     *
     */
    public function editAction(Request $request, AdminTipoTelefonia $adminTipoTelefonium)
    {
        $deleteForm = $this->createDeleteForm($adminTipoTelefonium);
        $editForm = $this->createForm('SICBundle\Form\AdminTipoTelefoniaType', $adminTipoTelefonium);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoTelefonium);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipotelefonia'));
            // return $this->redirectToRoute('configurables_tipo_telefonia_edit', array('id' => $adminTipoTelefonium->getId()));
        }

        return $this->render('admintipotelefonia/edit.html.twig', array(
            'adminTipoTelefonium' => $adminTipoTelefonium,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminTipoTelefonia entity.
     *
     */
    public function deleteAction(Request $request, AdminTipoTelefonia $adminTipoTelefonium)
    {
        $form = $this->createDeleteForm($adminTipoTelefonium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminTipoTelefonium);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipotelefonia'));
        // return $this->redirectToRoute('configurables_tipo_telefonia_index');
    }

    /**
     * Creates a form to delete a AdminTipoTelefonia entity.
     *
     * @param AdminTipoTelefonia $adminTipoTelefonium The AdminTipoTelefonia entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminTipoTelefonia $adminTipoTelefonium)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurables_tipo_telefonia_delete', array('id' => $adminTipoTelefonium->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
