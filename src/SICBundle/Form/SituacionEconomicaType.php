<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\FormEvents;
use SICBundle\Entity\AdminVentaVivienda;

class SituacionEconomicaType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->addEventListener(
                FormEvents::PRE_SUBMIT,
                array($this, 'onPreSubmit')
            )
            ->add('dondeTrabaja', 'entity', array(
                'class'     => 'SICBundle:AdminUbicacionTrabajo',
                'label'     => '¿Dónde Trabaja?',
                'placeholder' => 'Selecciona una',
                'required' => false,
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))

            /*->add('actividadComercial', 'entity', array(
                'class'     => 'SICBundle:AdminRespCerrada',
                'label'     => '¿Realiza algún tipo de actividad comercial dentro de la Vivienda?',
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))*/

            ->add('actividadComercialenVivienda', 'entity', array(
                'class'     => 'SICBundle:AdminVentaVivienda',
                'label'     => '¿Realiza algún tipo de actividad comercial dentro de la Vivienda?',
                'placeholder' => 'Selecciona una',
                'required'  => false,
                'multiple' => true,
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'fluid multiple search selection')))

            ->add('ingresoFamiliar','text',array(
                'attr'      => array(
                    'placeholder'   => 'Monto en Bs',
                    'value' => 0),
                'required' => false,
                ))

            ->add('ingresoFamiliarEspecifico', 'entity', array(
                'class'     => 'SICBundle:AdminTipoIngresos',
                'label'     => 'Ingreso estimado',
                'placeholder' => 'Selecciona una',
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))

            /*->add('poseeVehiculo', 'entity', array(
                'class'     => 'SICBundle:AdminRespCerrada',
                'label'     => '¿Realiza algún tipo de actividad comercial dentro de la Vivienda?',
                'attr'  =>  array(
                    'class' => 'ui fluid dropdown')))*/
            
            ->add('placa','text',array(
                'label'     => 'Si posee vehículo(s), Ingrese la(s) placa(s)',
                'required' => false,
                'attr'        => array(
                    'placeholder'   => 'AAA000,BBB111,....')))
        ;
    }

    public function onPreSubmit(\Symfony\Component\Form\FormEvent $event)
    {
        
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
