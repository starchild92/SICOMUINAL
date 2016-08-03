<?php

namespace SICBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class InicioController extends Controller
{
    public function inicioAction()
    {
        if( $this->container->get('security.context')->isGranted('IS_AUTHENTICATED_FULLY') )
        {
            return $this->render('inicio/inicio.html.twig');
        }else{
            return $this->redirect($this->generateUrl('fos_user_security_login'));
        }
        
    }

    public function loginAction()
    {
        return $this->redirect($this->generateUrl('fos_user_security_login'));
    }

    public function administrarEntidadesAction()
    {
        $em = $this->getDoctrine()->getManager();
        $comunidad = $em->getRepository('SICBundle:Comunidad')->findAll();
        $cc = $em->getRepository('SICBundle:ConsejoComunal')->findAll();

        $unidades_eje = array();
        $unidad_ejecutiva = $em->getRepository('SICBundle:Comite')->findBy(array('tipoUnidad' => 'Unidad Ejecutiva'));
        foreach ($unidad_ejecutiva as $ue) {
            $personas = array();
            $voceros = $ue->getVoceros();
            foreach ($voceros as $v) {
                $r = $em->getRepository('SICBundle:Persona')->findBy(array('cedula' => $v->getPersona()));
                if (sizeof($r)>0) {
                    $voce = $r[0];
                }else{
                    $r = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('cedula' => $v->getPersona()));
                    if (sizeof($r)>0) {
                        $voce = $r[0];
                    }else{
                        echo "La cédula no se encotró para el JefeGrupoFamiliar, despues de buscar en Personas";
                        die();
                    }
                }

                array_push($personas, array(
                    "tipo" => $v->getTipo(),
                    "vocero" => $voce,
                ));
            }

            array_push($unidades_eje, array(
                "tipoUnidad" => $ue->getTipoUnidad(),
                "nombre" => $ue->getNombre(),
                "voceros" => $personas,
                ));
        }

        $unidades_restantes = array();
        $unid_res = $em->getRepository('SICBundle:Comite')->findAll();
        foreach ($unid_res as $ue) {
            if ($ue->getTipoUnidad() != 'Unidad Ejecutiva') {            
                $personas = array();
                $voceros = $ue->getVoceros();
                foreach ($voceros as $v) {
                    $r = $em->getRepository('SICBundle:Persona')->findBy(array('cedula' => $v->getPersona()));
                    if (sizeof($r)>0) {
                        $voce = $r[0];
                    }else{
                        $r = $em->getRepository('SICBundle:JefeGrupoFamiliar')->findBy(array('cedula' => $v->getPersona()));
                        if (sizeof($r)>0) {
                            $voce = $r[0];
                        }else{
                            echo "La cédula no se encotró para el JefeGrupoFamiliar, despues de buscar en Personas";
                            die();
                        }
                    }

                    array_push($personas, array(
                        "tipo" => $v->getTipo(),
                        "votos" => $v->getVotosElecto(),
                        "vocero" => $voce,
                    ));
                }

                array_push($unidades_restantes, array(
                    "tipoUnidad" => $ue->getTipoUnidad(),
                    "voceros" => $personas,
                ));
            }
        }

        //die();

        // Solo una sola instancia de esta entidad
        if (count($comunidad) > 0) { $comunidad = $comunidad[0]; }
        if (count($cc) > 0) { $cc = $cc[0]; }

        return $this->render('administracion/administrar_entidades.html.twig', 
            array(
                'comunidad' =>  $comunidad,
                'consejo'   =>  $cc,
                'unidades_eje'   =>  $unidades_eje,
                'unidades_restantes'   =>  $unidades_restantes,
            ));
    }

    public function administrarParametrosAction()
    {
        return $this->render('administracion/parametros.html.twig');
    }

    public function volverParametrosAction($index)
    {
        return $this->render('administracion/parametros.html.twig');
    }

    // Documentos

    public function cuadernoVotacionAction()
    {
        $em = $this->getDoctrine()->getManager();
        $comunidad = $em->getRepository('SICBundle:Comunidad')->findAll();
        if (sizeof($comunidad) > 0) {
            $comunidad_info = $comunidad[0];
        }

        $jefes_grupo_familiar = $em->getRepository('SICBundle:JefeGrupoFamiliar')->mayores_de(16);
        $jefes_grupo_familiar = $em->getRepository('SICBundle:Persona')->mayores_de(16);
        echo sizeof($jefes_grupo_familiar);
        die();

        return $this->render('inicio/cuaderno-votacion.html.twig',
            array(
                'votantes' => array(),
                'comunidad' => $comunidad_info));
    }

    public function resumenCensoAction()
    {
        return $this->render('inicio/resumen-censo.html.twig');
    }

    public function registroElectoralAction()
    {
        return $this->render('inicio/registro-electoral.html.twig');
    }

    public function registroPreliminarAction()
    {
        return $this->render('inicio/registro-preliminar.html.twig');
    }
}
