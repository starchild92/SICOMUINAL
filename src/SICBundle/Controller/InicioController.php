<?php

namespace SICBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class InicioController extends Controller
{
    public function inicioAction()
    {
        return $this->render('inicio/inicio.html.twig');
    }

    public function loginAction()
    {
        return $this->redirect($this->generateUrl('fos_user_security_login'));
    }

    public function administrarEntidadesAction()
    {
        return $this->render('administracion/administrar_entidades.html.twig');
    }
}
