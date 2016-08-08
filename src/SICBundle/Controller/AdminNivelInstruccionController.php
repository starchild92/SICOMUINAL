<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Bitacora;
use SICBundle\Entity\AdminNivelInstruccion;
use SICBundle\Form\AdminNivelInstruccionType;

/**
 * AdminNivelInstruccion controller.
 *
 */
class AdminNivelInstruccionController extends Controller
{
    /**
     * Lists all AdminNivelInstruccion entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminNivelInstruccions = $em->getRepository('SICBundle:AdminNivelInstruccion')->findAll();

        return $this->render('adminnivelinstruccion/index.html.twig', array(
            'adminNivelInstruccions' => $adminNivelInstruccions,
        ));
    }

    /**
     * Creates a new AdminNivelInstruccion entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminNivelInstruccion = new AdminNivelInstruccion();
        $form = $this->createForm('SICBundle\Form\AdminNivelInstruccionType', $adminNivelInstruccion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminNivelInstruccion);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'nivelinstruccion'));
            // return $this->redirectToRoute('configurable_nivel_instruccion_show', array('id' => $adminNivelInstruccion->getId()));
        }

        return $this->render('adminnivelinstruccion/new.html.twig', array(
            'adminNivelInstruccion' => $adminNivelInstruccion,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminNivelInstruccion entity.
     *
     */
    public function showAction(AdminNivelInstruccion $adminNivelInstruccion)
    {
        $deleteForm = $this->createDeleteForm($adminNivelInstruccion);

        return $this->render('adminnivelinstruccion/show.html.twig', array(
            'adminNivelInstruccion' => $adminNivelInstruccion,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminNivelInstruccion entity.
     *
     */
    public function editAction(Request $request, AdminNivelInstruccion $adminNivelInstruccion)
    {
        $deleteForm = $this->createDeleteForm($adminNivelInstruccion);
        $editForm = $this->createForm('SICBundle\Form\AdminNivelInstruccionType', $adminNivelInstruccion);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminNivelInstruccion);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'nivelinstruccion'));
            // return $this->redirectToRoute('configurable_nivel_instruccion_edit', array('id' => $adminNivelInstruccion->getId()));
        }

        return $this->render('adminnivelinstruccion/edit.html.twig', array(
            'adminNivelInstruccion' => $adminNivelInstruccion,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminNivelInstruccion entity.
     *
     */
    public function deleteAction(Request $request, AdminNivelInstruccion $adminNivelInstruccion)
    {
        $form = $this->createDeleteForm($adminNivelInstruccion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminNivelInstruccion);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'nivelinstruccion'));
        // return $this->redirectToRoute('configurable_nivel_instruccion_index');
    }

    /**
     * Creates a form to delete a AdminNivelInstruccion entity.
     *
     * @param AdminNivelInstruccion $adminNivelInstruccion The AdminNivelInstruccion entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminNivelInstruccion $adminNivelInstruccion)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_nivel_instruccion_delete', array('id' => $adminNivelInstruccion->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
