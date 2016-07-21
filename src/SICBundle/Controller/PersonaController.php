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
    private function obtenerStats(){
        $em = $this->getDoctrine()->getManager();

        $personas = $em->getRepository('SICBundle:Persona')->findAll();

        $total = sizeof($personas);
        $stat_edad = array();
        $mayor = 0;
        $menor = 0;
        foreach ($personas as $p) {
            if ($p->getEdad() >= 18 ) {
                $mayor++;
            }else{
                $menor++;
            }
        }
        array_push($stat_edad, array('a' => 'Mayores de Edad', 'cantidad' => $mayor));
        array_push($stat_edad, array('a' => 'Menores de Edad', 'cantidad' => $menor));

        $stat_sexo = array();
        array_push(
            $stat_sexo, 
            array(
                'sexo' => 'Masculino',
                'cantidad' => sizeof($em->getRepository('SICBundle:Persona')->findBy(
                                    array('sexo' => 'Masculino')
                                    ))
                )
        );
        array_push(
            $stat_sexo, 
            array(
                'sexo' => 'Femenino',
                'cantidad' => sizeof($em->getRepository('SICBundle:Persona')->findBy(
                                    array('sexo' => 'Femenino')
                                    ))
                )
        );
        $resp_cerradas = $em->getRepository('SICBundle:AdminRespCerrada')->findAll();
        $stat_cne = array();
        foreach ($resp_cerradas as $resp) {
            array_push(
                $stat_cne, 
                array(
                    'resp' => $resp->getRespuesta(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:Persona')->findBy(
                                        array('cne' => $resp->getId())
                                        ))
                    )
            );
        }
        $stat_embarazo = array();
        foreach ($resp_cerradas as $resp) {
            array_push(
                $stat_embarazo, 
                array(
                    'resp' => $resp->getRespuesta(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:Persona')->findBy(
                                        array('embarazoTemprano' => $resp->getId())
                                        ))
                    )
            );
        }
        $instruccion = $em->getRepository('SICBundle:AdminNivelInstruccion')->findAll();
        $stat_instruccion = array();
        foreach ($instruccion as $elemento) {
            array_push(
                $stat_instruccion, 
                array(
                    'instruccion' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:Persona')->findBy(
                                        array('gradoInstruccion' => $elemento->getId())
                                        ))
                    )
            );
        }
        $profesiones = $em->getRepository('SICBundle:AdminProfesion')->findAll();
        $stat_profesiones = array();
        foreach ($profesiones as $elemento) {
            array_push(
                $stat_profesiones, 
                array(
                    'profesiones' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:Persona')->findBy(
                                        array('profesion' => $elemento->getId())
                                        ))
                    )
            );
        }

        $incapacidades = $em->getRepository('SICBundle:AdminIncapacidades')->findAll();
        $stat_incapacidades = array();
        foreach ($incapacidades as $elemento) {
            array_push(
                $stat_incapacidades, 
                array(
                    'incapacidades' => $elemento->getIncapacidad(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:Persona')->findBy(
                                        array('incapacitadoTipo' => $elemento->getId())
                                        ))
                    )
            );
        }

        $pensionados = $em->getRepository('SICBundle:AdminPensionadoInstitucion')->findAll();
        $stat_pensionados = array();
        foreach ($pensionados as $elemento) {
            array_push(
                $stat_pensionados, 
                array(
                    'pensionados' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:Persona')->findBy(
                                        array('pensionadoInstitucion' => $elemento->getId())
                                        ))
                    )
            );
        }

        return array(
            'stat_sexo' => $stat_sexo,
            'stat_cne' => $stat_cne,
            'stat_instruccion' => $stat_instruccion,
            'stat_profesiones' => $stat_profesiones,
            'stat_incapacidades' => $stat_incapacidades,
            'stat_pensionados' => $stat_pensionados,
            'stat_embarazo' => $stat_embarazo,
            'stat_edad' => $stat_edad,
            'total' => $total,
        );
    }
    /**
     * Lists all Persona entities.
     *
     */
    public function indexAction()
    {
        $stat = $this->obtenerStats();
        return $this->render('persona/index.html.twig', $stat);
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
            if ($persona->getEmail() != '') {
                $persona->setRecibirCorreo(true);
            }else{
                $persona->setRecibirCorreo(false);
            }
            $em->persist($persona);
            $em->persist($Grupo);
            $em->flush();

            $cantMiembros = $Grupo->getCantidadMiembros();
            $this->get('session')->getFlashBag()->add('success','Se agregó el miembro al grupo familiar de forma correcta.');

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

            if ($persona->getEmail() != '') {
                $persona->setRecibirCorreo(true);
            }else{
                $persona->setRecibirCorreo(false);
            }
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
