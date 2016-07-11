<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\JefeGrupoFamiliar;
use SICBundle\Form\JefeGrupoFamiliarType;

/**
 * JefeGrupoFamiliar controller.
 *
 */
class JefeGrupoFamiliarController extends Controller
{
    /**
     * Lists all JefeGrupoFamiliar entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $jefeGrupoFamiliars = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findAll();

        return $this->render('jefegrupofamiliar/index.html.twig', array(
            'jefeGrupoFamiliars' => $jefeGrupoFamiliars,
        ));
    }

    /**
     * Creates a new JefeGrupoFamiliar entity.
     *
     */
    public function newAction(Request $request, $id_planilla)
    {
        /*Redireccionar cuando se accede por GET y evitar que se cree una nueva para la misma planilla*/
        $em = $this->getDoctrine()->getManager();
        $planilla = $em->getRepository('SICBundle:Planillas')->findById($id_planilla);
        $p = $planilla[0];

        if($p->getJefeGrupoFamiliar() != NULL){
            $this->get('session')->getFlashBag()
            ->add('error', 'Seleccione la sección que desea modificar');
            return $this->redirectToRoute('planillas_show', array('id' => $id_planilla));
        }

        $jefeGrupoFamiliar = new JefeGrupoFamiliar();
        $form = $this->createForm('SICBundle\Form\JefeGrupoFamiliarType', $jefeGrupoFamiliar);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $p->setJefeGrupoFamiliar($jefeGrupoFamiliar);
            $em->persist($jefeGrupoFamiliar);
            $em->persist($p);
            $em->flush();

            // redirigir a (Caracteristicas Grupo Familiar)
            return $this->redirectToRoute('grupofamiliar_new', array('id_planilla' => $id_planilla, 'id_grupofamiliar' => 0));
        }

        return $this->render('jefegrupofamiliar/new.html.twig', array(
            'jefeGrupoFamiliar' => $jefeGrupoFamiliar,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a JefeGrupoFamiliar entity.
     *
     */
    public function showAction(JefeGrupoFamiliar $jefeGrupoFamiliar)
    {
        $deleteForm = $this->createDeleteForm($jefeGrupoFamiliar);

        return $this->render('jefegrupofamiliar/show.html.twig', array(
            'jefeGrupoFamiliar' => $jefeGrupoFamiliar,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing JefeGrupoFamiliar entity.
     *
     */
    public function editAction(Request $request, JefeGrupoFamiliar $jefeGrupoFamiliar)
    {
        $deleteForm = $this->createDeleteForm($jefeGrupoFamiliar);
        $editForm = $this->createForm('SICBundle\Form\JefeGrupoFamiliarType', $jefeGrupoFamiliar);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($jefeGrupoFamiliar);
            $em->flush();

            $this->get('session')->getFlashBag()
            ->add('success', 'Se han guardado los cambios del Jefe de Grupo Familiar');

            return $this->redirectToRoute('planillas_show', array('id' => $jefeGrupoFamiliar->getPlanilla()->getId()));
        }

        return $this->render('jefegrupofamiliar/edit.html.twig', array(
            'jefeGrupoFamiliar' => $jefeGrupoFamiliar,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a JefeGrupoFamiliar entity.
     *
     */
    public function deleteAction(Request $request, JefeGrupoFamiliar $jefeGrupoFamiliar)
    {
        $form = $this->createDeleteForm($jefeGrupoFamiliar);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($jefeGrupoFamiliar);
            $em->flush();
        }

        return $this->redirectToRoute('jefegrupofamiliar_index');
    }

    /**
     * Creates a form to delete a JefeGrupoFamiliar entity.
     *
     * @param JefeGrupoFamiliar $jefeGrupoFamiliar The JefeGrupoFamiliar entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(JefeGrupoFamiliar $jefeGrupoFamiliar)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('jefegrupofamiliar_delete', array('id' => $jefeGrupoFamiliar->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
