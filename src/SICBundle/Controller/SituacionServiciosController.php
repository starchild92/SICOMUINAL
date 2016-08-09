<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\SituacionServicios;
use SICBundle\Form\SituacionServiciosType;

/**
 * SituacionServicios controller.
 *
 */
class SituacionServiciosController extends Controller
{
    private function obtenerStats(){
        $em = $this->getDoctrine()->getManager();

        $situacionServicios = $em->getRepository('SICBundle:SituacionServicios')->findAll();
        
        $total = sizeof($situacionServicios);

        $aguasb = $em->getRepository('SICBundle:AdminAguasBlancas')->findAll();
        $stat_aguasb = array();
        foreach ($aguasb as $elemento) {
            array_push(
                $stat_aguasb, 
                array(
                    'aguasb' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:SituacionServicios')->findBy(
                                        array('aguasBlancas' => $elemento->getId())
                                        ))
                    )
            );
        }

        $aguasservidas = $em->getRepository('SICBundle:AdminAguasServidas')->findAll();
        $stat_aguasservidas = array();
        foreach ($aguasservidas as $elemento) {
            array_push(
                $stat_aguasservidas, 
                array(
                    'aguasservidas' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:SituacionServicios')->findBy(
                                        array('aguasServidas' => $elemento->getId())
                                        ))
                    )
            );
        }

        $gas = $em->getRepository('SICBundle:AdminTipoGas')->findAll();
        $stat_gas = array();
        foreach ($gas as $elemento) {
            array_push(
                $stat_gas, 
                array(
                    'gas' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:SituacionServicios')->findBy(
                                        array('gas' => $elemento->getId())
                                        ))
                    )
            );
        }

        $sistemas_electrico = $em->getRepository('SICBundle:AdminSistemaElectrico')->findAll();
        $stat_sistemas_electrico = array();
        foreach ($sistemas_electrico as $elemento) {
            array_push(
                $stat_sistemas_electrico, 
                array(
                    'sistemas_electrico' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:SituacionServicios')->findBy(
                                        array('sistemaElectrico' => $elemento->getId())
                                        ))
                    )
            );
        }

        $basura = $em->getRepository('SICBundle:AdminRecoleccionBasura')->findAll();
        $stat_basura = array();
        foreach ($basura as $elemento) {
            array_push(
                $stat_basura, 
                array(
                    'basura' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:SituacionServicios')->findBy(
                                        array('recoleccionBasura' => $elemento->getId())
                                        ))
                    )
            );
        }

        $telefonia = $em->getRepository('SICBundle:AdminTipoTelefonia')->findAll();
        $stat_telefonia = array();
        foreach ($telefonia as $elemento) {
            array_push(
                $stat_telefonia, 
                array(
                    'telefonia' => $elemento->getNombre(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:SituacionServicios')->findBy(
                                        array('telefonia' => $elemento->getId())
                                        ))
                    )
            );
        }

        $transporte = $em->getRepository('SICBundle:AdminTipoTransporte')->findAll();
        $stat_transporte = array();
        foreach ($transporte as $elemento) {
            array_push(
                $stat_transporte, 
                array(
                    'transporte' => $elemento->getNombre(),
                    'cantidad' => sizeof($em->getRepository('SICBundle:SituacionServicios')->transporte($elemento)))
            );
        }

        $mecanismoInformacion = $em->getRepository('SICBundle:AdminMecanismoInformacion')->findAll();
        $stat_mecanismoInformacion = array();
        foreach ($mecanismoInformacion as $elemento) {
            array_push(
                $stat_mecanismoInformacion, 
                array(
                    'mecanismoInformacion' => $elemento->getNombre(),
                    'cantidad' => sizeof($em->getRepository('SICBundle:SituacionServicios')->mecanismoInformacion($elemento)))
            );
        }

        $serviciosComunales = $em->getRepository('SICBundle:AdminServiciosComunales')->findAll();
        $stat_serviciosComunales = array();
        foreach ($serviciosComunales as $elemento) {
            array_push(
                $stat_serviciosComunales, 
                array(
                    'serviciosComunales' => $elemento->getNombre(),
                    'cantidad' => sizeof($em->getRepository('SICBundle:SituacionServicios')->serviciosComunales($elemento)))
            );
        }

        $resp_cerradas = $em->getRepository('SICBundle:AdminRespCerrada')->findAll();
        $stat_medidor = array();
        foreach ($resp_cerradas as $resp) {
            array_push(
                $stat_medidor, 
                array(
                    'resp' => $resp->getRespuesta(),
                    'cantidad'     => sizeof($em->getRepository('SICBundle:SituacionServicios')->findBy(
                                        array('medidor' => $resp->getId())
                                        ))
                    )
            );
        }

        $si = 0; $no = 0;
        $tanques = $em->getRepository('SICBundle:SituacionServicios')->findAll();
        $stat_tanque = array();
        $stat_pipotes = array();
        foreach ($tanques as $t) { if ($t->getLtsTanque() > 0) { $si++; }else{ $no++; } }
        array_push($stat_tanque, array('resp' => 'Si', 'cantidad' => $si));
        array_push($stat_tanque, array('resp' => 'No', 'cantidad' => $no));
        $si = 0; $no = 0;
        foreach ($tanques as $t) { if ($t->getCantPipotes() > 0) { $si++; }else{ $no++; } }
        array_push($stat_pipotes, array('resp' => 'Si', 'cantidad' => $si));
        array_push($stat_pipotes, array('resp' => 'No', 'cantidad' => $no));

        $empresaGas = $em->getRepository('SICBundle:AdminEmpresaGas')->findAll();
        $stat_empresaGas = array();
        foreach ($empresaGas as $elemento) {
            array_push(
                $stat_empresaGas, 
                array(
                    'empresaGas' => $elemento->getNombre(),
                    'cantidad' => sizeof($em->getRepository('SICBundle:SituacionServicios')->findBy(
                        array('empresaGas' => $elemento->getId()))))
            );
        }

        return array(
            'situacionServicios' => $situacionServicios,
            'stat_serviciosComunales' => $stat_serviciosComunales,
            'stat_mecanismoInformacion' => $stat_mecanismoInformacion,
            'stat_transporte' => $stat_transporte,
            'stat_telefonia' => $stat_telefonia,
            'stat_basura' => $stat_basura,
            'stat_sistemas_electrico' => $stat_sistemas_electrico,
            'stat_gas' => $stat_gas,
            'stat_aguasservidas' => $stat_aguasservidas,
            'stat_aguasb' => $stat_aguasb,
            'stat_medidor' => $stat_medidor,
            'stat_tanque' => $stat_tanque,
            'stat_pipotes' => $stat_pipotes,
            'stat_empresaGas' => $stat_empresaGas,
            'total' => $total,
        );
    }

    /**
     * Lists all SituacionServicios entities.
     *
     */
    public function indexAction()
    {
        $stats = $this->obtenerStats();
        return $this->render('situacionservicios/index.html.twig', $stats);
    }

    /**
     * Creates a new SituacionServicios entity.
     *
     */
    public function newAction(Request $request, $id_planilla)
    {
        /*Redireccionar cuando se accede por GET y evitar que se cree una nueva para la misma planilla*/
        $em = $this->getDoctrine()->getManager();
        $planilla = $em->getRepository('SICBundle:Planillas')->findById($id_planilla);
        $p = $planilla[0];

        if($p->getSituacionServicios() != NULL){
            $this->get('session')->getFlashBag()
            ->add('error', 'Seleccione la sección que desea modificar');
            return $this->redirectToRoute('planillas_show', array('id' => $id_planilla));
        }

        $situacionServicio = new SituacionServicios();
        $form = $this->createForm('SICBundle\Form\SituacionServiciosType', $situacionServicio);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($situacionServicio);
            $p->setSituacionServicios($situacionServicio);
            $em->persist($p);
            $em->flush();

            return $this->redirectToRoute('participacioncomunitaria_new', array('id_planilla' => $id_planilla));
        }

        return $this->render('situacionservicios/new.html.twig', array(
            'situacionServicio' => $situacionServicio,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a SituacionServicios entity.
     *
     */
    public function showAction(SituacionServicios $situacionServicio)
    {
        $deleteForm = $this->createDeleteForm($situacionServicio);

        return $this->render('situacionservicios/show.html.twig', array(
            'situacionServicio' => $situacionServicio,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing SituacionServicios entity.
     *
     */
    public function editAction(Request $request, SituacionServicios $situacionServicio)
    {
        $deleteForm = $this->createDeleteForm($situacionServicio);
        $editForm = $this->createForm('SICBundle\Form\SituacionServiciosType', $situacionServicio);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($situacionServicio);
            $em->flush();

            $this->get('session')->getFlashBag()
            ->add('success', 'Se han almacena los datos de Situación de Servicios de forma exitosa.');
            return $this->redirectToRoute('planillas_show', array('id' => $situacionServicio->getPlanilla()->getId()));
        }

        return $this->render('situacionservicios/edit.html.twig', array(
            'situacionServicio' => $situacionServicio,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a SituacionServicios entity.
     *
     */
    public function deleteAction(Request $request, SituacionServicios $situacionServicio)
    {
        $form = $this->createDeleteForm($situacionServicio);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($situacionServicio);
            $em->flush();
        }

        return $this->redirectToRoute('situacionservicios_index');
    }

    /**
     * Creates a form to delete a SituacionServicios entity.
     *
     * @param SituacionServicios $situacionServicio The SituacionServicios entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(SituacionServicios $situacionServicio)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('situacionservicios_delete', array('id' => $situacionServicio->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
