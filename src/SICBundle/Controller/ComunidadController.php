<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Comunidad;
use SICBundle\Form\ComunidadType;

/**
 * Comunidad controller.
 *
 */
class ComunidadController extends Controller
{
    /**
     * Lists all Comunidad entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $comunidads = $em->getRepository('SICBundle:Comunidad')->findAll();

        return $this->render('comunidad/index.html.twig', array(
            'comunidads' => $comunidads,
        ));
    }

    /**
     * Creates a new Comunidad entity.
     *
     */
    public function newAction(Request $request)
    {
        $comunidad = new Comunidad();
        $form = $this->createForm('SICBundle\Form\ComunidadType', $comunidad);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($comunidad);
            $em->flush();

            return $this->redirectToRoute('comunidades_show', array('id' => $comunidad->getId()));
        }

        return $this->render('comunidad/new.html.twig', array(
            'comunidad' => $comunidad,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Comunidad entity.
     *
     */
    public function showAction(Comunidad $comunidad)
    {
        $deleteForm = $this->createDeleteForm($comunidad);

        return $this->render('comunidad/show.html.twig', array(
            'comunidad' => $comunidad,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Comunidad entity.
     *
     */
    public function editAction(Request $request, Comunidad $comunidad)
    {
        $deleteForm = $this->createDeleteForm($comunidad);
        $editForm = $this->createForm('SICBundle\Form\ComunidadType', $comunidad);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($comunidad);
            $em->flush();

            return $this->redirectToRoute('comunidades_edit', array('id' => $comunidad->getId()));
        }

        return $this->render('comunidad/edit.html.twig', array(
            'comunidad' => $comunidad,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Comunidad entity.
     *
     */
    public function deleteAction(Request $request, Comunidad $comunidad)
    {
        $form = $this->createDeleteForm($comunidad);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($comunidad);
            $em->flush();
        }

        return $this->redirectToRoute('comunidades_index');
    }

    /**
     * Creates a form to delete a Comunidad entity.
     *
     * @param Comunidad $comunidad The Comunidad entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Comunidad $comunidad)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('comunidades_delete', array('id' => $comunidad->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
