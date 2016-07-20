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

        // Solo una sola instancia de esta entidad
        if (count($comunidad) > 0) {
            $comunidad = $comunidad[0];
        }
        if (count($cc) > 0) {
            $cc = $cc[0];
        }

        return $this->render('administracion/administrar_entidades.html.twig', 
            array(
                'comunidad' =>  $comunidad,
                'consejo'   =>  $cc));
    }

    public function administrarParametrosAction()
    {
        return $this->render('administracion/parametros.html.twig');
    }

    public function volverParametrosAction($index)
    {
        return $this->render('administracion/parametros.html.twig');
    }
}
