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

    public function egEconomicaAction(Request $request){
        $todas = $this->estadisticasEconomica();
        return $this->render('estadisticas/estadisticas-generales-economica.html.twig',array('situacion' => $todas));   
    }
    public function estadisticasEconomica()
    {
        $em = $this->getDoctrine()->getManager();

        $ubic_trabajo = $em->getRepository('SICBundle:AdminUbicacionTrabajo')->findAll();
        $stat_ubic_trabajo = array();
        foreach ($ubic_trabajo as $elemento) {
            array_push($stat_ubic_trabajo, array('trabajo' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionEconomica')->findBy(array('dondeTrabaja' => $elemento->getId()))));
        }

        $venta_vivienda = $em->getRepository('SICBundle:AdminVentaVivienda')->findAll();
        $stat_venta_vivienda = array();
        foreach ($venta_vivienda as $elemento) {
            array_push($stat_venta_vivienda, array('venta_vivienda' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionEconomica')->findByActividadComercialVivienda($elemento)));
        }

        return array(
            'stat_ubic_trabajo'  => $stat_ubic_trabajo,
            'stat_venta_vivienda'  => $stat_venta_vivienda,
        );
    }

    public function egViviendaAction(Request $request){
        $todas = $this->estadisticasVivienda();
        return $this->render('estadisticas/estadisticas-generales-vivienda.html.twig',array('situacion' => $todas));   
    }
    public function estadisticasVivienda()
    {
        $em = $this->getDoctrine()->getManager();
        $situacionViviendas = $em->getRepository('SICBundle:SituacionVivienda')->findAll();

        $condicion_terreno = $em->getRepository('SICBundle:AdminTipoCondicionTerreno')->findAll();
        $stat_condicion_terreno = array();
        foreach ($condicion_terreno as $elemento) {
            array_push($stat_condicion_terreno, array('elemento' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('condicionesTerreno' => $elemento->getId()))));
        }

        $tipo_vivienda = $em->getRepository('SICBundle:AdminTipoVivienda')->findAll();
        $stat_tipo_vivienda = array();
        foreach ($tipo_vivienda as $elemento) {
            array_push($stat_tipo_vivienda, array('elemento' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('tipo' => $elemento->getId()))));
        }

        $tipo_tenencia = $em->getRepository('SICBundle:AdminTipoTenencia')->findAll();
        $stat_tipo_tenencia = array();
        foreach ($tipo_tenencia as $elemento) {
            array_push($stat_tipo_tenencia, array('elemento' => $elemento->getForma(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('tenencia' => $elemento->getId()))));
        }

        $terreno = $em->getRepository('SICBundle:AdminRespCerrada')->findAll();
        $stat_terreno = array();
        foreach ($terreno as $elemento) {
            array_push($stat_terreno, array('elemento' => $elemento->getRespuesta(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('terrenoPropio' => $elemento->getId()))));
        }

        $ovc = $em->getRepository('SICBundle:AdminRespCerrada')->findAll();
        $stat_ovc = array();
        foreach ($ovc as $elemento) {
            array_push($stat_ovc, array('elemento' => $elemento->getRespuesta(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('ovc' => $elemento->getId()))));
        }

        $paredes = $em->getRepository('SICBundle:AdminTipoParedes')->findAll();
        $stat_paredes = array();
        foreach ($paredes as $elemento) {
            array_push($stat_paredes, array('elemento' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('paredes' => $elemento->getId()))));
        }

        $sivih = $em->getRepository('SICBundle:AdminRespCerrada')->findAll();
        $stat_sivih = array();
        foreach ($sivih as $elemento) {
            array_push($stat_sivih, array('elemento' => $elemento->getRespuesta(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('sivih' => $elemento->getId()))));
        }

        $leypoliticahabitacional = $sivih;
        $stat_leypoliticahabitacional = array();
        foreach ($leypoliticahabitacional as $elemento) {
            array_push($stat_leypoliticahabitacional, array('elemento' => $elemento->getRespuesta(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('leypoliticahabitacional' => $elemento->getId()))));
        }

        $techo = $em->getRepository('SICBundle:AdminTipoTecho')->findAll();
        $stat_techo = array();
        foreach ($techo as $elemento) {
            array_push($stat_techo, array('elemento' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('techo' => $elemento->getId()))));
        }

        $enseres = $em->getRepository('SICBundle:AdminTipoEnseres')->findAll();
        $stat_enseres = array();
        foreach ($enseres as $elemento) {
            array_push($stat_enseres, array('elemento' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findByEnseres($elemento)));
        }

        $salubridad = $em->getRepository('SICBundle:AdminSalubridadVivienda')->findAll();
        $stat_salubridad = array();
        foreach ($salubridad as $elemento) {
            array_push($stat_salubridad, array('elemento' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findBy(array('salubridad' => $elemento->getId()))));
        }

        $plagas = $em->getRepository('SICBundle:AdminTipoPlagas')->findAll();
        $stat_plagas = array();
        foreach ($plagas as $elemento) {
            array_push($stat_plagas, array('elemento' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findByPresenciaInsectos($elemento)));
        }

        $mascotas = $em->getRepository('SICBundle:AdminTipoMascotas')->findAll();
        $stat_mascotas = array();
        foreach ($mascotas as $elemento) {
            array_push($stat_mascotas, array('elemento' => $elemento->getNombre(),'situacion' => $em->getRepository('SICBundle:SituacionVivienda')->findByMascota($elemento)));
        }

        return array(
            'stat_tipo_vivienda' => $stat_tipo_vivienda,
            'stat_tipo_tenencia' => $stat_tipo_tenencia,
            'stat_ovc' => $stat_ovc,
            'stat_terreno' => $stat_terreno,
            'stat_mascotas' => $stat_mascotas,
            'stat_plagas' => $stat_plagas,
            'stat_enseres' => $stat_enseres,
            'stat_salubridad' => $stat_salubridad,
            'stat_techo' => $stat_techo,
            'stat_paredes' => $stat_paredes,
            'stat_condicion_terreno' => $stat_condicion_terreno,
            'stat_sivih' => $stat_sivih,
            'stat_leypoliticahabitacional' => $stat_leypoliticahabitacional,
        );
    }
}
