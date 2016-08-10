<?php

namespace SICBundle\Form;

use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;

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
            ->add('cedula','text', array(
                'label' => 'Cédula de Identidad'))
            
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
                'label' => 'Fecha de Nacimiento',
                'attr' => ['class' => 'js-datepicker'],
            ))

            ->add('edad') //Se calcula automaticamente

            ->add('cne', EntityType::class, array(
                'label'     => '¿Está inscrito en el CNE?',
                'class' => 'SICBundle:AdminRespCerrada',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'respuesta',
            ))
            ->add('tiempoEnComunidad')
            ->add('sexo', GeneroType::class, array(
                'placeholder' => 'Elija uno'))

            ->add('incapacitado', ChoiceType::class, array(
                'label' => '¿Es Discapacitado?',
                'choices'  => array(
                    'Seleccione' => '',
                    'Si' => 'si',
                    'No' => 'no',
                    // 'Otro' => 'otro'
                ),
                'choices_as_values' => true,
            ))
            ->add('incapacitadoTipo', EntityType::class, array(
                'label' => '¿Cúal es la discapacidad que padece?',
                'class' => 'SICBundle:AdminIncapacidades',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'incapacidad',
                'attr'      => array(
                    'required'  => false,
                    // 'class' => 'ui fluid search dropdown'
                    )
            ))
            ->add('pensionado', ChoiceType::class, array(
                'label' => '¿Es pensionado?',
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
                'label' => 'Institución Pensionado',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'attr'      => array(
                    // 'class' => 'ui dropdown',
                    'required'  => false)
            ))
            ->add('estadoCivil', EntityType::class, array(
                'class' => 'SICBundle:AdminEstadoCivil',
                'label' => 'Estado Civil',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'attr'      => array(
                    'class' => 'ui dropdown',)
            ))
            ->add('nivelInstruccion', EntityType::class, array(
                'label' => '¿Cúal es el Nivel de Instrucción?',
                'class' => 'SICBundle:AdminNivelInstruccion',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'attr' => array(
                    'class' => 'ui dropdown')
            ))
            ->add('profesion', EntityType::class, array(
                'class' => 'SICBundle:AdminProfesion',
                'label' => 'Profesión',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'attr'      => array(
                    'required'  => false,
                    'class' => 'ui fluid search dropdown')
            ))
            ->add('trabajaActualmente', EntityType::class, array(
                'class' => 'SICBundle:AdminRespCerrada',
                'label' => '¿Trabaja actualmente?',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'respuesta',
            ))
            ->add('telefono','collection',array(
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

            ->add('email','text',array(
                'label'     => 'Correo Electrónico',
                'required'  => false,))

            ->add('ingresoFamiliar', EntityType::class, array(
                'label' => 'Clasificación del Ingreso Familiar',
                'class' => 'SICBundle:AdminClasIngresoFamiliar',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
            ))
            
            ->add('ingresoMensual','text', array(
                'label' => 'Estimado de Ingreso Mensual',
                'attr' => array(
                    'value' => 0)
                ))
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
