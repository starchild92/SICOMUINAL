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
    	$estadisticas_jgf = JefeGrupoFamiliarController::obtenerEstadisticas($request);

        return $this->render('estadisticas/estadisticas-generales-personas.html.twig', array('jfg' => $estadisticas_jgf));   
    }
}
