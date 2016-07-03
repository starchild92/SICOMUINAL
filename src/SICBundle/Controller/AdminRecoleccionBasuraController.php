<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminRecoleccionBasura;
use SICBundle\Form\AdminRecoleccionBasuraType;

/**
 * AdminRecoleccionBasura controller.
 *
 */
class AdminRecoleccionBasuraController extends Controller
{
    /**
     * Lists all AdminRecoleccionBasura entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminRecoleccionBasuras = $em->getRepository('SICBundle:AdminRecoleccionBasura')->findAll();

        return $this->render('adminrecoleccionbasura/index.html.twig', array(
            'adminRecoleccionBasuras' => $adminRecoleccionBasuras,
        ));
    }

    /**
     * Creates a new AdminRecoleccionBasura entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminRecoleccionBasura = new AdminRecoleccionBasura();
        $form = $this->createForm('SICBundle\Form\AdminRecoleccionBasuraType', $adminRecoleccionBasura);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminRecoleccionBasura);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'recoleccionbasura'));
            // return $this->redirectToRoute('configurables_tipo_recoleccion_basura_show', array('id' => $adminRecoleccionBasura->getId()));
        }

        return $this->render('adminrecoleccionbasura/new.html.twig', array(
            'adminRecoleccionBasura' => $adminRecoleccionBasura,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminRecoleccionBasura entity.
     *
     */
    public function showAction(AdminRecoleccionBasura $adminRecoleccionBasura)
    {
        $deleteForm = $this->createDeleteForm($adminRecoleccionBasura);

        return $this->render('adminrecoleccionbasura/show.html.twig', array(
            'adminRecoleccionBasura' => $adminRecoleccionBasura,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminRecoleccionBasura entity.
     *
     */
    public function editAction(Request $request, AdminRecoleccionBasura $adminRecoleccionBasura)
    {
        $deleteForm = $this->createDeleteForm($adminRecoleccionBasura);
        $editForm = $this->createForm('SICBundle\Form\AdminRecoleccionBasuraType', $adminRecoleccionBasura);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminRecoleccionBasura);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'recoleccionbasura'));
            // return $this->redirectToRoute('configurables_tipo_recoleccion_basura_edit', array('id' => $adminRecoleccionBasura->getId()));
        }

        return $this->render('adminrecoleccionbasura/edit.html.twig', array(
            'adminRecoleccionBasura' => $adminRecoleccionBasura,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminRecoleccionBasura entity.
     *
     */
    public function deleteAction(Request $request, AdminRecoleccionBasura $adminRecoleccionBasura)
    {
        $form = $this->createDeleteForm($adminRecoleccionBasura);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminRecoleccionBasura);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'recoleccionbasura'));
        // return $this->redirectToRoute('configurables_tipo_recoleccion_basura_index');
    }

    /**
     * Creates a form to delete a AdminRecoleccionBasura entity.
     *
     * @param AdminRecoleccionBasura $adminRecoleccionBasura The AdminRecoleccionBasura entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminRecoleccionBasura $adminRecoleccionBasura)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurables_tipo_recoleccion_basura_delete', array('id' => $adminRecoleccionBasura->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
