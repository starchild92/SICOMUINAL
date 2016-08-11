<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

use SICBundle\Form\GeneroType;
use SICBundle\Form\TelefonoType;

class PersonaType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombre','text',array(
                'label'     => 'Nombre(s)'))
            ->add('apellido','text',array(
                'label'     => 'Apellidos(s)'))

            ->add('sexo', GeneroType::class, array(
                'placeholder' => 'Elija uno',
                'attr' => array('class' => 'ui dropdown')))

            ->add('nacionalidad', EntityType::class, array(
                // query choices from this entity
                'class' => 'SICBundle:AdminNacionalidad',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'Nacionalidad',

                // used to render a select box, check boxes or radios
                 // 'multiple' => true,
                 // 'expanded' => true,
            ))
            
            ->add('cedula','text', array(
                'label'     => 'Cédula de Identidad',
                'required' => false,))
            
            ->add('email')
            
            ->add('fechaNacimiento', DateType::class, array(
                'widget'    => 'single_text',
                'html5'     => false,
                'attr'      => ['class' => 'js-datepicker'],
                'label'     => 'Fecha de Nacimiento'
            ))

            ->add('edad')
            ->add('parentesco', 'text', array(
                'label'     => 'Parentesco que guarda con el Jefe del Grupo Familiar'))
            
            ->add('gradoInstruccion', EntityType::class, array(
                'label' => '¿Cúal es su Nivel de Instrucción?',
                'class' => 'SICBundle:AdminNivelInstruccion',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'attr'      => array(
                    'class' => 'ui search dropdown')
            ))

            ->add('profesion', EntityType::class, array(
                'class' => 'SICBundle:AdminProfesion',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'attr'      => array(
                    'class' => 'search additions',
                    'required'  => false),
                'label'     => 'Indique una Profesión'
            ))

            ->add('cne', EntityType::class, array(
                'label'     => '¿Está inscrito en el CNE?',
                'class' => 'SICBundle:AdminRespCerrada',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'respuesta',
            ))

            ->add('embarazoTemprano', EntityType::class, array(
                'label'     => '¿Embarazo Temprano?',
                'class' => 'SICBundle:AdminRespCerrada',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'respuesta',
            ))

            ->add('incapacitado', ChoiceType::class, array(
                'label' => 'Discapacidad',
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
            'data_class' => 'SICBundle\Entity\Persona'
        ));
    }
}
