<?php

namespace SICBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Slik\DompdfBundle\DomPDF;
use Symfony\Component\HttpFoundation\Response;
use SICBundle\Entity\Bitacora;


class InicioController extends Controller
{
    public function inicioAction(){
        if( $this->container->get('security.context')->isGranted('IS_AUTHENTICATED_FULLY') )
        {
            return $this->render('inicio/inicio.html.twig');
        }else{
            return $this->redirect($this->generateUrl('fos_user_security_login'));
        }    
    }

    public function loginAction(){
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
    public function cmp($a, $b){ return strcmp($a->getCedula(), $b->getCedula()); }
    public function cuadernoVotacionAction()
    {
        $em = $this->getDoctrine()->getManager();
        $comunidad = $em->getRepository('SICBundle:Comunidad')->findAll();
        if (sizeof($comunidad) > 0) {
            $comunidad_info = $comunidad[0];
            $jefes_grupo_familiar = $em->getRepository('SICBundle:JefeGrupoFamiliar')->mayores_de(16);
            $personas = $em->getRepository('SICBundle:Persona')->mayores_de(16);
            $votantes = array();
            foreach ($jefes_grupo_familiar as $j) { array_push($votantes, $j); }
            foreach ($personas as $p) { array_push($votantes, $p); }

            usort($votantes, array($this, "cmp"));

            return $this->render('inicio/cuaderno-votacion.html.twig',
                array(
                    'votantes' => $votantes,
                    'comunidad' => $comunidad_info));
        }else{
            $this->get('session')->getFlashBag()->add('danger', 'No se puede generar el Cuaderno de Votación hasta tanto no haya agregado los datos de la Comunidad');
            return $this->redirectToRoute('sic_homepage');
        }
    }
    public function cuadernoVotacionPDFAction()
    {
        $em = $this->getDoctrine()->getManager();
        $comunidad = $em->getRepository('SICBundle:Comunidad')->findAll();
        if (sizeof($comunidad) > 0) {
            $comunidad_info = $comunidad[0];

            $jefes_grupo_familiar = $em->getRepository('SICBundle:JefeGrupoFamiliar')->mayores_de(16);
            $personas = $em->getRepository('SICBundle:Persona')->mayores_de(16);
            $votantes = array();
            foreach ($jefes_grupo_familiar as $j) { array_push($votantes, $j); }
            foreach ($personas as $p) { array_push($votantes, $p); }
            usort($votantes, array($this, "cmp"));

            // Genero el PDF Aqui
            $dompdf = new \DOMPDF();
            $dompdf->set_paper('letter', 'landscape');
            $dompdf->load_html($this->renderView('inicio/cuaderno-votacion-pdf.html.twig',
                array(
                    'votantes' => $votantes,
                    'comunidad' => $comunidad_info))
            );
            $dompdf->render();

            $entrada = new Bitacora($this->getUser(),'generó','un Cuaderno de Votación');
            $em->persist($entrada);
            $em->flush();

            // Or get the output to handle it yourself
            $response = new Response();
            $response->setContent($dompdf->stream("cuaderno-votacion.pdf", array("Attachment"=>1)));
            $response->setStatusCode(200);
            $response->headers->set('Content-Type', 'application/pdf');
            return $response;
        }else{
            $this->get('session')->getFlashBag()->add('danger', 'No se puede generar el Cuaderno de Votación hasta tanto no haya agregado los datos de la Comunidad');
            return $this->redirectToRoute('sic_homepage');
        }
    }

    public function cmpcalles($a, $b){ return strcmp($a->getSector(), $b->getSector()); }
    public function resumenCensoAction()
    {
        $em = $this->getDoctrine()->getManager();
        $comunidad = $em->getRepository('SICBundle:Comunidad')->findAll();
        $consejo = $em->getRepository('SICBundle:ConsejoComunal')->findAll();
        if (sizeof($comunidad) > 0 && sizeof($consejo)) {
            $comunidad_info = $comunidad[0];
            $cc = $consejo[0];

            $sectores = $em->getRepository('SICBundle:GrupoFamiliar')->findSectores(); //Cantidad de Sectores para realizar la contabilización de los datos
            usort($sectores, array($this, "cmpcalles"));

            foreach ($sectores as $gf) {
                echo $gf->getSector()."<br>";
            }
            echo sizeof($sectores);
            die();

            return $this->render('inicio/resumen-censo.html.twig',
                array(
                    'comunidad' => $comunidad_info,
                    'consejo' => $cc->getNombre()));
        }else{
            $this->get('session')->getFlashBag()->add('danger', 'No se puede generar el Resumen del Censo Demográfico hasta tanto no haya agregado los datos de la Comunidad y/o del Consejo Comunal.');
            return $this->redirectToRoute('sic_homepage');
        }
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
