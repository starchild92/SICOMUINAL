<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminTipoSituacionExclusion;
use SICBundle\Form\AdminTipoSituacionExclusionType;

/**
 * AdminTipoSituacionExclusion controller.
 *
 */
class AdminTipoSituacionExclusionController extends Controller
{
    /**
     * Lists all AdminTipoSituacionExclusion entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminTipoSituacionExclusions = $em->getRepository('SICBundle:AdminTipoSituacionExclusion')->findAll();

        return $this->render('admintiposituacionexclusion/index.html.twig', array(
            'adminTipoSituacionExclusions' => $adminTipoSituacionExclusions,
        ));
    }

    /**
     * Creates a new AdminTipoSituacionExclusion entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminTipoSituacionExclusion = new AdminTipoSituacionExclusion();
        $form = $this->createForm('SICBundle\Form\AdminTipoSituacionExclusionType', $adminTipoSituacionExclusion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoSituacionExclusion);
            $em->flush();

            return $this->redirectToRoute('configurable_tipo_situacion_exclusion_show', array('id' => $adminTipoSituacionExclusion->getId()));
        }

        return $this->render('admintiposituacionexclusion/new.html.twig', array(
            'adminTipoSituacionExclusion' => $adminTipoSituacionExclusion,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminTipoSituacionExclusion entity.
     *
     */
    public function showAction(AdminTipoSituacionExclusion $adminTipoSituacionExclusion)
    {
        $deleteForm = $this->createDeleteForm($adminTipoSituacionExclusion);

        return $this->render('admintiposituacionexclusion/show.html.twig', array(
            'adminTipoSituacionExclusion' => $adminTipoSituacionExclusion,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminTipoSituacionExclusion entity.
     *
     */
    public function editAction(Request $request, AdminTipoSituacionExclusion $adminTipoSituacionExclusion)
    {
        $deleteForm = $this->createDeleteForm($adminTipoSituacionExclusion);
        $editForm = $this->createForm('SICBundle\Form\AdminTipoSituacionExclusionType', $adminTipoSituacionExclusion);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoSituacionExclusion);
            $em->flush();

            return $this->redirectToRoute('configurable_tipo_situacion_exclusion_edit', array('id' => $adminTipoSituacionExclusion->getId()));
        }

        return $this->render('admintiposituacionexclusion/edit.html.twig', array(
            'adminTipoSituacionExclusion' => $adminTipoSituacionExclusion,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminTipoSituacionExclusion entity.
     *
     */
    public function deleteAction(Request $request, AdminTipoSituacionExclusion $adminTipoSituacionExclusion)
    {
        $form = $this->createDeleteForm($adminTipoSituacionExclusion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminTipoSituacionExclusion);
            $em->flush();
        }

        return $this->redirectToRoute('configurable_tipo_situacion_exclusion_index');
    }

    /**
     * Creates a form to delete a AdminTipoSituacionExclusion entity.
     *
     * @param AdminTipoSituacionExclusion $adminTipoSituacionExclusion The AdminTipoSituacionExclusion entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminTipoSituacionExclusion $adminTipoSituacionExclusion)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_tipo_situacion_exclusion_delete', array('id' => $adminTipoSituacionExclusion->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
