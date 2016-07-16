<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SituacionServiciosType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('aguasBlancas','entity', array(
                'class' => 'SICBundle:AdminAguasBlancas',
                'placeholder'   => 'Seleccione una',
                'label' => 'Aguas Blancas',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('aguasServidas','entity', array(
                'class' => 'SICBundle:AdminAguasServidas',
                'placeholder'   => 'Seleccione una',
                'label' => 'Aguas Servidas',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('gas','entity', array(
                'class' => 'SICBundle:AdminTipoGas',
                'placeholder'   => 'Seleccione una',
                'label' => 'Gas',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('sistemaElectrico','entity', array(
                'class' => 'SICBundle:AdminSistemaElectrico',
                'placeholder'   => 'Seleccione una',
                'label' => 'Sistema Eléctrico',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('recoleccionBasura','entity', array(
                'class' => 'SICBundle:AdminRecoleccionBasura',
                'placeholder'   => 'Seleccione una',
                'label' => 'Sistema de Recolección de Basura',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('telefonia','entity', array(
                'class' => 'SICBundle:AdminTipoTelefonia',
                'placeholder'   => 'Seleccione una',
                'label' => 'Telefonía',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('transporte','entity', array(
                'class' => 'SICBundle:AdminTipoTransporte',
                'placeholder'   => 'Seleccione todas las que apliquen',
                'multiple' => true,
                'label' => 'Sistema de transporte',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))

            ->add('mecanismoInformacion','entity', array(
                'class' => 'SICBundle:AdminMecanismoInformacion',
                'placeholder'   => 'Seleccione todas las que apliquen',
                'multiple' => true,
                'label' => 'Mecanismos de Información',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))

            ->add('serviciosComunales','entity', array(
                'placeholder'   => 'Seleccione todas las que apliquen',
                'class' => 'SICBundle:AdminServiciosComunales',
                'multiple' => true,
                'label' => 'Servicios Comunales',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'SICBundle\Entity\SituacionServicios'
        ));
    }
}
