<?php

namespace SICBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Slik\DompdfBundle\DomPDF;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use SICBundle\Entity\Bitacora;

class EstadisticasController extends Controller
{
    public function estadisticasGeneralesAction(Request $request){
    	$estadisticas_jgf = JefeGrupoFamiliarController::obtenerEstadisticas($request);

        return $this->render('planillas/estadisticas-generales.html.twig', array('jfg' => $estadisticas_jgf));   
    }
}
