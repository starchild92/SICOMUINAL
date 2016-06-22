<?php

namespace SICBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

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

        return $this->render('administracion/administrar_entidades.html.twig', 
            array(
                'comunidad' =>  $comunidad,
                'consejo'   =>  $cc));
    }
}
