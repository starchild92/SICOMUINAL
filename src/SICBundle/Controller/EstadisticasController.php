<?php

namespace SICBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Slik\DompdfBundle\DomPDF;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use SICBundle\Entity\Bitacora;

class EstadisticasController extends Controller
{
    public function egPersonasAction(Request $request){
    	$todos = $this->estadisticasPersonas();

        return $this->render('estadisticas/estadisticas-generales-personas.html.twig',
        	array(
        		'personas' => $todos
        	));   
    }

    /*Se encarga de obtener las personas y separarlas segun el parametro que se tiene de la entidad*/
    public function estadisticasPersonas()
    {
        $em = $this->getDoctrine()->getManager();

        // $jefeGrupoFamiliars = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findAll();
        // $total = sizeof($jefeGrupoFamiliars);

        $nacionalidades = $em->getRepository('SICBundle:AdminNacionalidad')->findAll();
        $stat_nacionalidad_jgf = array();
        $stat_nacionalidad_p = array();
        foreach ($nacionalidades as $nacionalidad) {
            array_push(
                $stat_nacionalidad_jgf, array(
                    'nacionalidad' => $nacionalidad->getNacionalidad(),
                    'quienes'     => $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('nacionalidad' => $nacionalidad->getId()))
                )
            );
            array_push(
                $stat_nacionalidad_p, array(
                    'nacionalidad' => $nacionalidad->getNacionalidad(),
                    'quienes'     => $em->getRepository('SICBundle:Persona')->findBy(array('nacionalidad' => $nacionalidad->getId()))
                    )
            );
        }

        // $stat_sexo = array();
        // array_push(
        //     $stat_sexo, 
        //     array(
        //         'sexo' => 'Masculino',
        //         'cantidad' => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
        //                             array('sexo' => 'Masculino')
        //                             ))
        //         )
        // );
        // array_push(
        //     $stat_sexo, 
        //     array(
        //         'sexo' => 'Femenino',
        //         'cantidad' => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
        //                             array('sexo' => 'Femenino')
        //                             ))
        //         )
        // );

        $resp_cerradas = $em->getRepository('SICBundle:AdminRespCerrada')->findAll();
        $stat_cne_jgf = array();
        $stat_cne_p = array();
        foreach ($resp_cerradas as $resp) {
            array_push($stat_cne_jgf, array('resp' => $resp->getRespuesta(),'quienes'     => $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('cne' => $resp->getId()))));
            array_push($stat_cne_p, array('resp' => $resp->getRespuesta(),'quienes'     => $em->getRepository('SICBundle:Persona')->findBy(array('cne' => $resp->getId()))));
        }
        
        $stat_empleado_jgf = array();
        foreach ($resp_cerradas as $resp) {
            array_push($stat_empleado_jgf, array('resp' => $resp->getRespuesta(),'quienes'=> $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('trabajaActualmente' => $resp->getId()))));
        }

        // $edo_civil = $em->getRepository('SICBundle:AdminEstadoCivil')->findAll();
        // $stat_edo_civil = array();
        // foreach ($edo_civil as $elemento) {
        //     array_push(
        //         $stat_edo_civil, 
        //         array(
        //             'edo_civil' => $elemento->getNombre(),
        //             'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
        //                                 array('estadoCivil' => $elemento->getId())
        //                                 ))
        //             )
        //     );
        // }

        $instruccion = $em->getRepository('SICBundle:AdminNivelInstruccion')->findAll();
        $stat_instruccion_jgf = array();
        $stat_instruccion_p = array();
        foreach ($instruccion as $elemento) {
            array_push($stat_instruccion_jgf, array('nivel' => $elemento->getNombre(),'quienes'=> $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('nivelInstruccion' => $elemento->getId()))));
            array_push($stat_instruccion_p, array('nivel' => $elemento->getNombre(),'quienes'=> $em->getRepository('SICBundle:Persona')->findBy(array('gradoInstruccion' => $elemento->getId()))));
        }

        // $profesiones = $em->getRepository('SICBundle:AdminProfesion')->findAll();
        // $stat_profesiones = array();
        // foreach ($profesiones as $elemento) {
        //     array_push(
        //         $stat_profesiones, 
        //         array(
        //             'profesiones' => $elemento->getNombre(),
        //             'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
        //                                 array('profesion' => $elemento->getId())
        //                                 ))
        //             )
        //     );
        // }

        // $incapacidades = $em->getRepository('SICBundle:AdminIncapacidades')->findAll();
        // $stat_incapacidades = array();
        // foreach ($incapacidades as $elemento) {
        //     array_push(
        //         $stat_incapacidades, 
        //         array(
        //             'incapacidades' => $elemento->getIncapacidad(),
        //             'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
        //                                 array('incapacitadoTipo' => $elemento->getId())
        //                                 ))
        //             )
        //     );
        // }

        // $pensionados = $em->getRepository('SICBundle:AdminPensionadoInstitucion')->findAll();
        // $stat_pensionados = array();
        // foreach ($pensionados as $elemento) {
        //     array_push(
        //         $stat_pensionados, 
        //         array(
        //             'pensionados' => $elemento->getNombre(),
        //             'cantidad'     => sizeof($em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(
        //                                 array('pensionadoInstitucion' => $elemento->getId())
        //                                 ))
        //             )
        //     );
        // }

        return array(
            // 'total' => $total,
            'stat_nacionalidad_jgf' => $stat_nacionalidad_jgf,
            'stat_nacionalidad_p' => $stat_nacionalidad_p,

            // 'stat_sexo' => $stat_sexo,
            'stat_cne_jgf' => $stat_cne_jgf,
            'stat_cne_p' => $stat_cne_p,

            // 'stat_edo_civil_jgf' => $stat_edo_civil_jgf,

            'stat_instruccion_jgf' => $stat_instruccion_jgf,
            'stat_instruccion_p' => $stat_instruccion_p,

            // 'stat_profesiones' => $stat_profesiones,
            'stat_empleado_jgf' => $stat_empleado_jgf,
            // 'stat_incapacidades' => $stat_incapacidades,
            // 'stat_pensionados' => $stat_pensionados,
            // 'base_dir' => $this->get('kernel')->getRootDir() . '/../web' . $request->getBasePath(),
        );
    }
}
