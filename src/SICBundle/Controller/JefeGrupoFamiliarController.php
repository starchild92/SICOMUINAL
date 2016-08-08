<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
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
    public function indexAction(Request $request)
    {
        $stats = $this->obtenerEstadisticas($request);
        return $this->render('jefegrupofamiliar/index.html.twig', $stats);
    }

    public function getPersonaByCedula($cedula)
    {
        $em = $this->getDoctrine()->getManager();
        $resultado = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('cedula' => $cedula));
        if (sizeof($resultado) > 0) {
            return $resultado[0];
        }else{
            $resultado = $em->getRepository('SICBundle:Persona')->findBy(array('cedula' => $cedula));
            if (sizeof($resultado) > 0) {
                return $resultado[0];
            }else{
                return null;
            }
        }
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
            ->add('danger', 'Seleccione la sección que desea modificar');
            return $this->redirectToRoute('planillas_show', array('id' => $id_planilla));
        }

        $jefeGrupoFamiliar = new JefeGrupoFamiliar();
        $form = $this->createForm('SICBundle\Form\JefeGrupoFamiliarType', $jefeGrupoFamiliar);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
        	if ($this->getPersonaByCedula($jefeGrupoFamiliar->getCedula()) == NULL) {
        		$jefeGrupoFamiliar->setRecibirCorreo(true);
	            $p->setJefeGrupoFamiliar($jefeGrupoFamiliar);
	            $em->persist($jefeGrupoFamiliar);
	            $em->persist($p);
                $this->get('session')->getFlashBag()->add('success', 'Se ha creado un Jefe de Grupo Familiar');
                $bitacora = new Bitacora($this->getUser(),'agregó','un Jefe de Grupo Familiar');
                $em->persist($bitacora);
	            $em->flush();

	            // redirigir a (Caracteristicas Grupo Familiar)
	            return $this->redirectToRoute('grupofamiliar_new', array('id_planilla' => $id_planilla, 'id_grupofamiliar' => 0));
        	}else{
        		$this->get('session')->getFlashBag()
                    ->add('error', 'Ya existe una persona con este número de cédula, verifica sus datos en la Agenda de la Comunidad.');
        	}
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
            $bitacora = new Bitacora($this->getUser(),'modificó','un Jefe de Grupo Familiar');
            $em->persist($bitacora);
            $em->flush();

            $this->get('session')->getFlashBag()->add('success', 'Se han guardado los cambios del Jefe de Grupo Familiar');

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
            $this->get('session')->getFlashBag()->add('success', 'Se ha eliminado al Jefe de Grupo Familiar');
            $bitacora = new Bitacora($this->getUser(),'eliminó','un Jefe de Grupo Familiar');
            $em->persist($bitacora);
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

    private function obtenerEstadisticas($request)
    {
        $em = $this->getDoctrine()->getManager();

        $jefeGrupoFamiliars = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findAll();
        $total = sizeof($jefeGrupoFamiliars);

        $nacionalidades = $em->getRepository('SICBundle:AdminNacionalidad')->findAll();
        $stat_nacionalidad = array();
        foreach ($nacionalidades as $nacionalidad) {
            array_push(
                $stat_nacionalidad, 
                array(
                    'nacionalidad' => $nacionalidad->getNacionalidad(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
                                        array('nacionalidad' => $nacionalidad->getId())
                                        ))
                    )
            );
        }

        $stat_sexo = array();
        array_push(
            $stat_sexo, 
            array(
                'sexo' => 'Masculino',
                'cantidad' => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
                                    array('sexo' => 'Masculino')
                                    ))
                )
        );
        array_push(
            $stat_sexo, 
            array(
                'sexo' => 'Femenino',
                'cantidad' => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
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
                    'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
                                        array('cne' => $resp->getId())
                                        ))
                    )
            );
        }
        
        $stat_empleado = array();
        foreach ($resp_cerradas as $resp) {
            array_push(
                $stat_empleado, 
                array(
                    'resp' => $resp->getRespuesta(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
                                        array('trabajaActualmente' => $resp->getId())
                                        ))
                    )
            );
        }

        $edo_civil = $em->getRepository('SICBundle:AdminEstadoCivil')->findAll();
        $stat_edo_civil = array();
        foreach ($edo_civil as $elemento) {
            array_push(
                $stat_edo_civil, 
                array(
                    'edo_civil' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
                                        array('estadoCivil' => $elemento->getId())
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
                    'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
                                        array('nivelInstruccion' => $elemento->getId())
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
                    'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
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
                    'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
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
                    'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
                                        array('pensionadoInstitucion' => $elemento->getId())
                                        ))
                    )
            );
        }

        return array(
            'total' => $total,
            'stat_nacionalidad' => $stat_nacionalidad,
            'stat_sexo' => $stat_sexo,
            'stat_cne' => $stat_cne,
            'stat_edo_civil' => $stat_edo_civil,
            'stat_instruccion' => $stat_instruccion,
            'stat_profesiones' => $stat_profesiones,
            'stat_empleado' => $stat_empleado,
            'stat_incapacidades' => $stat_incapacidades,
            'stat_pensionados' => $stat_pensionados,
            'base_dir' => $this->get('kernel')->getRootDir() . '/../web' . $request->getBasePath(),
        );
    }

    public function vistaDocAction(Request $request)
    {
        $stats = $this->obtenerEstadisticas($request);
        return $this->render('jefegrupofamiliar/resumen_doc.html.twig', $stats);
    }

    public function obtenerDocumentoAction(Request $request){

        $stats = $this->obtenerEstadisticas($request);
        $html = $this->renderView('jefegrupofamiliar/resumen_doc.html.twig', $stats);
        
        echo "Actualizar a DOMPDF";
        die();
        // return new Response(
        //     $this->get('knp_snappy.pdf')->getOutputFromHtml($html, 
        //         array(
        //             'images'            => true,
        //             'no-background'     => false,
        //             'footer-right'      => utf8_decode('Pagina [page] de [topage] - '.date('\ d-m-Y\ h:i a')),
        //             'footer-left'       => utf8_decode('Sistema de Información Comunal')
        //             )),
        //     200,
        //     array(
        //         'Content-Type'          => 'application/pdf',
        //         'Content-Disposition'   => 'attachment; filename="ReporteJefesGrupoFamiliar.pdf"'
        // ));

    }
}
