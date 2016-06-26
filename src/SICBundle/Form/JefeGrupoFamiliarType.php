<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;

use SICBundle\Form\GeneroType;

class JefeGrupoFamiliarType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombres')
            ->add('apellidos')
            ->add('cedula')
            ->add('nacionalidad', EntityType::class, array(
                // query choices from this entity
                'class' => 'SICBundle:AdminNacionalidad',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'Nacionalidad',

                // used to render a select box, check boxes or radios
                 // 'multiple' => true,
                 // 'expanded' => true,
            ))
            ->add('fechaNacimiento', DateType::class, array(
                'widget' => 'single_text',
                'html5' => false,
                'attr' => ['class' => 'js-datepicker'],
            ))

            ->add('edad') //Se calcula automaticamente
            ->add('cne', EntityType::class, array(
                // query choices from this entity
                'class' => 'SICBundle:AdminRespCerrada',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'respuesta',
            ))
            ->add('tiempoEnComunidad')
            ->add('sexo', GeneroType::class, array(
                'placeholder' => 'Elija uno'))

            ->add('incapacitado', ChoiceType::class, array(
                'choices'  => array(
                    'Seleccione' => '',
                    'Si' => 'si',
                    'No' => 'no',
                    // 'Otro' => 'otro'
                ),
                'choices_as_values' => true,
            ))
            ->add('incapacitadoTipo', EntityType::class, array(
                'class' => 'SICBundle:AdminIncapacidades',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'incapacidad',
                'attr'      => array(
                    // 'class' => 'ui dropdown',
                    'required'  => false)
            ))
            ->add('pensionado', ChoiceType::class, array(
                'choices'  => array(
                    'Seleccione' => '',
                    'Si' => 'si',
                    'No' => 'no',
                    // 'Otro' => 'otro'
                ),
                'choices_as_values' => true,
            ))
            ->add('pensionadoInstitucion', EntityType::class, array(
                'class' => 'SICBundle:AdminPensionadoInstitucion',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'attr'      => array(
                    // 'class' => 'ui dropdown',
                    'required'  => false)
            ))
            ->add('estadoCivil', EntityType::class, array(
                'class' => 'SICBundle:AdminEstadoCivil',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
            ))
            ->add('nivelInstruccion', EntityType::class, array(
                'class' => 'SICBundle:AdminNivelInstruccion',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
            ))
            ->add('profesion', EntityType::class, array(
                'class' => 'SICBundle:AdminProfesion',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
            ))
            ->add('trabajaActualmente', EntityType::class, array(
                'class' => 'SICBundle:AdminRespCerrada',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'respuesta',
            ))
            ->add('telefono',
                    'collection',array(
                        'required' => false,
                        'type' => new TelefonoType(),
                        'cascade_validation' => true,
                        'attr' => array('class' => 'telefonos'),
                        'allow_add'=>'true',
                        'by_reference'=>'false',
                        'allow_delete' =>'true',
                        'data_class' => null,
                        'label' => 'Número(s) teléfonicos',
                        ))
            ->add('email')
            ->add('ingresoFamiliar', EntityType::class, array(
                'class' => 'SICBundle:AdminClasIngresoFamiliar',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
            ))
            ->add('ingresoMensual')
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'SICBundle\Entity\JefeGrupoFamiliar'
        ));
    }
}
