<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Comite;
use SICBundle\Form\ComiteType;

/**
 * Comite controller.
 *
 */
class ComiteController extends Controller
{
    /**
     * Lists all Comite entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $comites = $em->getRepository('SICBundle:Comite')->findAll();

        return $this->render('comite/index.html.twig', array(
            'comites' => $comites,
        ));
    }

    /**
     * Creates a new Comite entity.
     *
     */
    public function newAction(Request $request)
    {
        $comite = new Comite();
        $form = $this->createForm('SICBundle\Form\ComiteType', $comite);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($comite);
            $em->flush();

            return $this->redirectToRoute('comites_show', array('id' => $comite->getId()));
        }

        return $this->render('comite/new.html.twig', array(
            'comite' => $comite,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Comite entity.
     *
     */
    public function showAction(Comite $comite)
    {
        $deleteForm = $this->createDeleteForm($comite);

        return $this->render('comite/show.html.twig', array(
            'comite' => $comite,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Comite entity.
     *
     */
    public function editAction(Request $request, Comite $comite)
    {
        $deleteForm = $this->createDeleteForm($comite);
        $editForm = $this->createForm('SICBundle\Form\ComiteType', $comite);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($comite);
            $em->flush();

            return $this->redirectToRoute('comites_edit', array('id' => $comite->getId()));
        }

        return $this->render('comite/edit.html.twig', array(
            'comite' => $comite,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Comite entity.
     *
     */
    public function deleteAction(Request $request, Comite $comite)
    {
        $form = $this->createDeleteForm($comite);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($comite);
            $em->flush();
        }

        return $this->redirectToRoute('comites_index');
    }

    /**
     * Creates a form to delete a Comite entity.
     *
     * @param Comite $comite The Comite entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Comite $comite)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('comites_delete', array('id' => $comite->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
