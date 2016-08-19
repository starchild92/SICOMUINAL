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
        return $this->render('estadisticas/estadisticas-generales-personas.html.twig',array('personas' => $todos));   
    }
    /*Se encarga de obtener las personas y separarlas segun el parametro que se tiene de la entidad*/
    public function estadisticasPersonas()
    {
        $em = $this->getDoctrine()->getManager();

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

        $instruccion = $em->getRepository('SICBundle:AdminNivelInstruccion')->findAll();
        $stat_instruccion_jgf = array();
        $stat_instruccion_p = array();
        foreach ($instruccion as $elemento) {
        	$whos = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('nivelInstruccion' => $elemento->getId()));
			if (sizeof($whos)>0) { array_push($stat_instruccion_jgf, array('nivel' => $elemento->getNombre(),'quienes'=> $whos)); }
            $whos = $em->getRepository('SICBundle:Persona')->findBy(array('gradoInstruccion' => $elemento->getId()));
			if (sizeof($whos)>0) { array_push($stat_instruccion_p, array('nivel' => $elemento->getNombre(),'quienes'=> $whos)); }
        }

        $profesiones = $em->getRepository('SICBundle:AdminProfesion')->findAll();
        $stat_profesiones_jgf = array();
        $stat_profesiones_p = array();
        foreach ($profesiones as $elemento) {
        	$whos = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('profesion' => $elemento->getId()));
        	if (sizeof($whos)) { array_push($stat_profesiones_jgf, array('profesion' => $elemento->getNombre(),'quienes'=> $whos)); }
        	$whos = $em->getRepository('SICBundle:Persona')->findBy(array('profesion' => $elemento->getId()));
        	if (sizeof($whos)) { array_push($stat_profesiones_p, array('profesion' => $elemento->getNombre(),'quienes'=> $whos)); }
            
        }

        $discapacidades = $em->getRepository('SICBundle:AdminIncapacidades')->findAll();
        $stat_discapacidades_jgf = array();
        $stat_discapacidades_p = array();
        foreach ($discapacidades as $elemento) {
            $whos = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('incapacitadoTipo' => $elemento->getId()));
            if(sizeof($whos) > 0){ array_push($stat_discapacidades_jgf, array('discapacidad' => $elemento->getIncapacidad(),'quienes'=> $whos)); }
            $whos = $em->getRepository('SICBundle:Persona')->findBy(array('incapacitadoTipo' => $elemento->getId()));
            if(sizeof($whos) > 0){ array_push($stat_discapacidades_p, array('discapacidad' => $elemento->getIncapacidad(),'quienes'=> $whos)); }
            
        }

        $pensionados = $em->getRepository('SICBundle:AdminPensionadoInstitucion')->findAll();
        $stat_pensionados_jgf = array();
        $stat_pensionados_p = array();
        foreach ($pensionados as $elemento) {
            array_push($stat_pensionados_jgf, array('pensionados' => $elemento->getNombre(),'quienes'=> $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('pensionadoInstitucion' => $elemento->getId()))));
            array_push($stat_pensionados_p, array('pensionados' => $elemento->getNombre(),'quienes'=> $em->getRepository('SICBundle:Persona')->findBy(array('pensionadoInstitucion' => $elemento->getId()))));
        }

        return array(
            'stat_nacionalidad_jgf' => $stat_nacionalidad_jgf,
            'stat_nacionalidad_p' => $stat_nacionalidad_p,

            'stat_cne_jgf' => $stat_cne_jgf,
            'stat_cne_p' => $stat_cne_p,

            'stat_instruccion_jgf' => $stat_instruccion_jgf,
            'stat_instruccion_p' => $stat_instruccion_p,

            'stat_profesiones_jgf' => $stat_profesiones_jgf,
            'stat_profesiones_p' => $stat_profesiones_p,

            'stat_empleado_jgf' => $stat_empleado_jgf,

            'stat_discapacidades_jgf' => $stat_discapacidades_jgf,
            'stat_discapacidades_p' => $stat_discapacidades_p,

            'stat_pensionados_jgf' => $stat_pensionados_jgf,
            'stat_pensionados_p' => $stat_pensionados_p,
        );
    }

    public function egGruposFamiliaresAction(Request $request){
        $todos = $this->estadisticasPersonas();
        return $this->render('estadisticas/estadisticas-generales-grupos-familiares.html.twig',array('personas' => $todos));   
    }
}
