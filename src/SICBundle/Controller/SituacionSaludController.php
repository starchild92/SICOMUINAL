<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\SituacionSalud;
use SICBundle\Form\SituacionSaludType;

/**
 * SituacionSalud controller.
 *
 */
class SituacionSaludController extends Controller
{
    /**
     * Lists all SituacionSalud entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $situacionSaluds = $em->getRepository('SICBundle:SituacionSalud')->findAll();

        $padecencias = $em->getRepository('SICBundle:AdminTipoPadecencia')->findAll();
        $stat_padecencias = array();
        foreach ($padecencias as $elemento) {
            array_push(
                $stat_padecencias, 
                array(
                    'padecencias' => $elemento->getNombre(),
                    'cantidad' => sizeof($em->getRepository('SICBundle:SituacionSalud')->padecencia($elemento)))
            );
        }

        $ayuda_especial = $em->getRepository('SICBundle:AdminTipoAyudaEspecial')->findAll();
        $stat_ayuda_especial = array();
        foreach ($ayuda_especial as $elemento) {
            array_push(
                $stat_ayuda_especial, 
                array(
                    'ayuda_especial' => $elemento->getNombre(),
                    'cantidad' => sizeof($em->getRepository('SICBundle:SituacionSalud')->ayudaEspecial($elemento)))
            );
        }

        $situacion_exclusion = $em->getRepository('SICBundle:AdminTipoSituacionExclusion')->findAll();
        $stat_situacion_exclusion = array();
        foreach ($situacion_exclusion as $elemento) {
            array_push(
                $stat_situacion_exclusion, 
                array(
                    'situacion_exclusion' => $elemento->getSituacion(),
                    'cantidad' => sizeof($em->getRepository('SICBundle:SituacionSalud')->situacionExclusion($elemento)))
            );
        }

        return $this->render('situacionsalud/index.html.twig', array(
            'situacionSaluds' => $situacionSaluds,
            'stat_situacion_exclusion' => $stat_situacion_exclusion,
            'stat_ayuda_especial' => $stat_ayuda_especial,
            'stat_padecencias' => $stat_padecencias,
        ));
    }

    /**
     * Creates a new SituacionSalud entity.
     *
     */
    public function newAction(Request $request, $id_planilla)
    {
        /*Redireccionar cuando se accede por GET y evitar que se cree una nueva para la misma planilla*/
        $em = $this->getDoctrine()->getManager();
        $planilla = $em->getRepository('SICBundle:Planillas')->findById($id_planilla);
        $p = $planilla[0];

        if($p->getSituacionSalud() != NULL){
            $this->get('session')->getFlashBag()
            ->add('error', 'Seleccione la sección que desea modificar');
            return $this->redirectToRoute('planillas_show', array('id' => $id_planilla));
        }

        $situacionSalud = new SituacionSalud();
        $form = $this->createForm('SICBundle\Form\SituacionSaludType', $situacionSalud);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($situacionSalud);
            $p->setSituacionSalud($situacionSalud);
            $em->persist($p);
            $em->flush();

            return $this->redirectToRoute('situacionservicios_new', array('id_planilla' => $id_planilla));
        }

        return $this->render('situacionsalud/new.html.twig', array(
            'situacionSalud' => $situacionSalud,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a SituacionSalud entity.
     *
     */
    public function showAction(SituacionSalud $situacionSalud)
    {
        $deleteForm = $this->createDeleteForm($situacionSalud);

        return $this->render('situacionsalud/show.html.twig', array(
            'situacionSalud' => $situacionSalud,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing SituacionSalud entity.
     *
     */
    public function editAction(Request $request, SituacionSalud $situacionSalud)
    {
        $deleteForm = $this->createDeleteForm($situacionSalud);
        $editForm = $this->createForm('SICBundle\Form\SituacionSaludType', $situacionSalud);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionSalud);
            $em->flush();

            $this->get('session')->getFlashBag()
            ->add('success', 'Se ha modificado la información de la Situación de Salud de forma exitosa.');
            return $this->redirectToRoute('planillas_show', array('id' => $situacionSalud->getPlanilla()->getId()));
        }

        return $this->render('situacionsalud/edit.html.twig', array(
            'situacionSalud' => $situacionSalud,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a SituacionSalud entity.
     *
     */
    public function deleteAction(Request $request, SituacionSalud $situacionSalud)
    {
        $form = $this->createDeleteForm($situacionSalud);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($situacionSalud);
            $em->flush();
        }

        return $this->redirectToRoute('situacionsalud_index');
    }

    /**
     * Creates a form to delete a SituacionSalud entity.
     *
     * @param SituacionSalud $situacionSalud The SituacionSalud entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(SituacionSalud $situacionSalud)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('situacionsalud_delete', array('id' => $situacionSalud->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
