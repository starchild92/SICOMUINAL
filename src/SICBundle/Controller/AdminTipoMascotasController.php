<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\AdminTipoMascotas;
use SICBundle\Form\AdminTipoMascotasType;

/**
 * AdminTipoMascotas controller.
 *
 */
class AdminTipoMascotasController extends Controller
{
    /**
     * Lists all AdminTipoMascotas entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $adminTipoMascotas = $em->getRepository('SICBundle:AdminTipoMascotas')->findAll();

        return $this->render('admintipomascotas/index.html.twig', array(
            'adminTipoMascotas' => $adminTipoMascotas,
        ));
    }

    /**
     * Creates a new AdminTipoMascotas entity.
     *
     */
    public function newAction(Request $request)
    {
        $adminTipoMascota = new AdminTipoMascotas();
        $form = $this->createForm('SICBundle\Form\AdminTipoMascotasType', $adminTipoMascota);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoMascota);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipomascotas'));
            // return $this->redirectToRoute('configurable_tipo_mascotas_show', array('id' => $adminTipoMascota->getId()));
        }

        return $this->render('admintipomascotas/new.html.twig', array(
            'adminTipoMascota' => $adminTipoMascota,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a AdminTipoMascotas entity.
     *
     */
    public function showAction(AdminTipoMascotas $adminTipoMascota)
    {
        $deleteForm = $this->createDeleteForm($adminTipoMascota);

        return $this->render('admintipomascotas/show.html.twig', array(
            'adminTipoMascota' => $adminTipoMascota,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing AdminTipoMascotas entity.
     *
     */
    public function editAction(Request $request, AdminTipoMascotas $adminTipoMascota)
    {
        $deleteForm = $this->createDeleteForm($adminTipoMascota);
        $editForm = $this->createForm('SICBundle\Form\AdminTipoMascotasType', $adminTipoMascota);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($adminTipoMascota);
            $em->flush();

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipomascotas'));
            // return $this->redirectToRoute('configurable_tipo_mascotas_edit', array('id' => $adminTipoMascota->getId()));
        }

        return $this->render('admintipomascotas/edit.html.twig', array(
            'adminTipoMascota' => $adminTipoMascota,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a AdminTipoMascotas entity.
     *
     */
    public function deleteAction(Request $request, AdminTipoMascotas $adminTipoMascota)
    {
        $form = $this->createDeleteForm($adminTipoMascota);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($adminTipoMascota);
            $em->flush();
        }

        return $this->redirectToRoute('sic_volver_parametros', array('index' => 'tipomascotas'));
        // return $this->redirectToRoute('configurable_tipo_mascotas_index');
    }

    /**
     * Creates a form to delete a AdminTipoMascotas entity.
     *
     * @param AdminTipoMascotas $adminTipoMascota The AdminTipoMascotas entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AdminTipoMascotas $adminTipoMascota)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('configurable_tipo_mascotas_delete', array('id' => $adminTipoMascota->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
