<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SituacionEconomicaType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('dondeTrabaja', 'entity', array(
                'class'     => 'SICBundle:AdminUbicacionTrabajo',
                'label'     => '¿Dónde Trabaja?',
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))

            ->add('actividadComercial', 'entity', array(
                'class'     => 'SICBundle:AdminRespCerrada',
                'label'     => '¿Realiza algún tipo de actividad comercial dentro de la Vivienda?',
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))

            ->add('actividadComercialenVivienda', 'entity', array(
                'class'     => 'SICBundle:AdminVentaVivienda',
                'label'     => 'Ventas De',
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))

            ->add('ingresoFamiliar','text',array(
                'attr'      => array(
                    'placeholder'   => 'Monto en Bs')))

            ->add('ingresoFamiliarEspecifico', 'entity', array(
                'class'     => 'SICBundle:AdminTipoIngresos',
                'label'     => 'Ingreso estimado',
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))

            ->add('poseeVehiculo', 'entity', array(
                'class'     => 'SICBundle:AdminRespCerrada',
                'label'     => '¿Realiza algún tipo de actividad comercial dentro de la Vivienda?',
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))
            
            ->add('placa')
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'SICBundle\Entity\SituacionEconomica'
        ));
    }
}
