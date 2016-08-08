<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Bitacora;
use SICBundle\Entity\AdminPreguntasSituacionComunidad;
use SICBundle\Form\AdminPreguntasSituacionComunidadType;

/**
 * AdminPreguntasSituacionComunidad controller.
 *
 */
class AdminPreguntasSituacionComunidadController extends Controller
{
    /**
     * Lists all AdminPreguntasSituacionComunidad entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminPreguntasSituacionComunidads = $em->getRepository('SICBundle:AdminPreguntasSituacionComunidad')->findAll();

        return $this->render('adminpreguntassituacioncomunidad/index.html.twig', array(
            'adminPreguntasSituacionComunidads' => $adminPreguntasSituacionComunidads,
        ));
    }

    /**
     * Creates a new AdminPreguntasSituacionComunidad entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminPreguntasSituacionComunidad = new AdminPreguntasSituacionComunidad();
        $form = $this->createForm('SICBundle\Form\AdminPreguntasSituacionComunidadType', $adminPreguntasSituacionComunidad);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminPreguntasSituacionComunidad);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'situacioncomunidad'));
            // return $this->redirectToRoute('adminpreguntassituacioncomunidad_show', array('id' => $adminPreguntasSituacionComunidad->getId()));
        }

        return $this->render('adminpreguntassituacioncomunidad/new.html.twig', array(
            'adminPreguntasSituacionComunidad' => $adminPreguntasSituacionComunidad,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminPreguntasSituacionComunidad entity.
     *
     */
    public function showAction(AdminPreguntasSituacionComunidad $adminPreguntasSituacionComunidad)
    {
        $deleteForm = $this->createDeleteForm($adminPreguntasSituacionComunidad);

        return $this->render('adminpreguntassituacioncomunidad/show.html.twig', array(
            'adminPreguntasSituacionComunidad' => $adminPreguntasSituacionComunidad,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminPreguntasSituacionComunidad entity.
     *
     */
    public function editAction(Request $request, AdminPreguntasSituacionComunidad $adminPreguntasSituacionComunidad)
    {
        $deleteForm = $this->createDeleteForm($adminPreguntasSituacionComunidad);
        $editForm = $this->createForm('SICBundle\Form\AdminPreguntasSituacionComunidadType', $adminPreguntasSituacionComunidad);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminPreguntasSituacionComunidad);
            $em->flush();

            return $this->redirectToRoute('sic_volver_parametros', array('index' => 'situacioncomunidad'));
            // return $this->redirectToRoute('adminpreguntassituacioncomunidad_edit', array('id' => $adminPreguntasSituacionComunidad->getId()));
        }

        return $this->render('adminpreguntassituacioncomunidad/edit.html.twig', array(
            'adminPreguntasSituacionComunidad' => $adminPreguntasSituacionComunidad,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminPreguntasSituacionComunidad entity.
     *
     */
    public function deleteAction(Request $request, AdminPreguntasSituacionComunidad $adminPreguntasSituacionComunidad)
    {
        $form = $this->createDeleteForm($adminPreguntasSituacionComunidad);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminPreguntasSituacionComunidad);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'situacioncomunidad'));
        // return $this->redirectToRoute('adminpreguntassituacioncomunidad_index');
    }

    /**
     * Creates a form to delete a AdminPreguntasSituacionComunidad entity.
     *
     * @param AdminPreguntasSituacionComunidad $adminPreguntasSituacionComunidad The AdminPreguntasSituacionComunidad entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminPreguntasSituacionComunidad $adminPreguntasSituacionComunidad)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('adminpreguntassituacioncomunidad_delete', array('id' => $adminPreguntasSituacionComunidad->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
