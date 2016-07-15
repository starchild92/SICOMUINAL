<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Persona;
use SICBundle\Form\PersonaType;

/**
 * Persona controller.
 *
 */
class PersonaController extends Controller
{
    /**
     * Lists all Persona entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $personas = $em->getRepository('SICBundle:Persona')->findAll();

        return $this->render('persona/index.html.twig', array(
            'personas' => $personas,
        ));
    }

    /**
     * Creates a new Persona entity.
     *
     */
    public function newAction(Request $request, $id_planilla, $id_grupofamiliar)
    {
        $persona = new Persona();
        $form = $this->createForm('SICBundle\Form\PersonaType', $persona);
        $form->handleRequest($request);
        
        $em = $this->getDoctrine()->getManager();
        $GrupoFam = $em->getRepository('SICBundle:GrupoFamiliar')->findById($id_grupofamiliar);
        // $cantMiembros = 1;
        if ($GrupoFam != NULL) {
            $Grupo = $GrupoFam[0];
            $aux = $Grupo->getCantidadMiembros();
            $Grupo->setCantidadMiembros($aux+1);
        }else{
            $this->get('session')->getFlashBag()
            ->add('error', 'Seleccione la sección que desea modificar');
            return $this->redirectToRoute('planillas_show', array('id' => $id_planilla));
        }

        if ($form->isSubmitted() && $form->isValid()) {
            $Grupo->addMiembro($persona);
            $em->persist($persona);
            $em->persist($Grupo);
            $em->flush();

            $cantMiembros = $Grupo->getCantidadMiembros();

            return $this->redirectToRoute('personas_new', array(
                'id_planilla' => $id_planilla,
                'id_grupofamiliar' => $id_grupofamiliar,
                'cantMiembros' => $cantMiembros));
        }

        $cantMiembros = $Grupo->getCantidadMiembros();

        return $this->render('persona/new.html.twig', array(
            'persona' => $persona,
            'id_planilla' => $id_planilla,
            'id_grupofamiliar' => $id_grupofamiliar,
            'cantMiembros' => $cantMiembros,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Persona entity.
     *
     */
    public function showAction(Persona $persona)
    {
        $deleteForm = $this->createDeleteForm($persona);

        return $this->render('persona/show.html.twig', array(
            'persona' => $persona,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Persona entity.
     *
     */
    public function editAction(Request $request, Persona $persona)
    {
        $deleteForm = $this->createDeleteForm($persona);
        $editForm = $this->createForm('SICBundle\Form\PersonaType', $persona);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($persona);
            $em->flush();

            $this->get('session')->getFlashBag()->add('success', 'Se han actualizado los datos de forma correcta.');

            return $this->redirectToRoute('personas_show', array('id' => $persona->getId()));
        }

        return $this->render('persona/edit.html.twig', array(
            'persona' => $persona,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Persona entity.
     *
     */
    public function deleteAction(Request $request, Persona $persona)
    {
        $form = $this->createDeleteForm($persona);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($persona);
            $em->flush();
        }

        return $this->redirectToRoute('personas_index');
    }

    /**
     * Creates a form to delete a Persona entity.
     *
     * @param Persona $persona The Persona entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Persona $persona)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('personas_delete', array('id' => $persona->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
