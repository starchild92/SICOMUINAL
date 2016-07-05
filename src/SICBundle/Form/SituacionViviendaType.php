<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class SituacionViviendaType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('cantidadHabitaciones','text',array(
                'label'     => '¿Cantidad de habitaciones con las que dispone en su Hogar?'))

            ->add('tipo','entity', array(
                'class' => 'SICBundle:AdminTipoVivienda',
                'placeholder'   => 'Seleccione una',
                'label'     => '¿Su vivienda es ...?',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('tenencia','entity', array(
                'class' => 'SICBundle:AdminTipoTenencia',
                'placeholder'   =>  'Seleccione una',
                'label'     => 'Forma Tenencia',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('terrenoPropio', ChoiceType::class, array(
                'choices'  => array(
                    'Seleccione' => '',
                    'Si' => 'si',
                    'No' => 'no',
                    // 'Otro' => 'otro'
                ),
                'choices_as_values' => true,
                'label'     => '¿Es el terreno propio?',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('ovc', ChoiceType::class, array(
                'choices'  => array(
                    'Seleccione' => '',
                    'Si' => 'si',
                    'No' => 'no',
                    // 'Otro' => 'otro'
                ),
                'choices_as_values' => true,
                'label'   => 'Organizaciones Civiles de Viviendas (OCV)',
                'placeholder'   => '¿Pertenece a una OCV?',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('habitaciones','entity', array(
                'class' => 'SICBundle:AdminTipoHabitacionesVivienda',
                'multiple' => true,
                'label'     => '¿Cuales tipo de Habitaciones componen su hogar?',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))

            ->add('paredes','entity', array(
                'class' => 'SICBundle:AdminTipoParedes',
                'placeholder'       => 'Seleccione una',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('techo','entity', array(
                'class' => 'SICBundle:AdminTipoTecho',
                'placeholder'       => 'Seleccione una',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('enseres','entity', array(
                'class' => 'SICBundle:AdminTipoEnseres',
                'multiple' => true,
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))

            ->add('salubridad','entity', array(
                'class' => 'SICBundle:AdminSalubridadVivienda',
                'placeholder'       => 'Seleccione una',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('presenciaInsectos','entity', array(
                'class' => 'SICBundle:AdminTipoPlagas',
                'multiple' => true,
                'required'  => false,
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))

            ->add('mascota','entity', array(
                'class' => 'SICBundle:AdminTipoMascotas',
                'multiple' => true,
                'required'  => false,
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
            'data_class' => 'SICBundle\Entity\SituacionVivienda'
        ));
    }
}
