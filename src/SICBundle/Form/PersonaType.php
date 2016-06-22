<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

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
            ->add('nombre')
            ->add('apellido')
            ->add('sexo', GeneroType::class, array(
                'placeholder' => 'Elija uno'))
            ->add('cedula')
            ->add('fechaNacimiento', 'date')
            ->add('edad')
            ->add('parentezco')
            ->add('gradoInstruccion')
            ->add('profesion')
            ->add('cne')
            ->add('embarazoTemprano')
            ->add('incapacitado')
            ->add('incapacitadoTipo')
            ->add('pensionado')
            ->add('pensionadoInstitucion')

            ->add('telefonos',
                    'collection',array(
                        'required' => false,
                        'type' => new TelefonoType(),
                        'cascade_validation' => true,
                        'attr' => array('class' => 'tags'),
                        'allow_add'=>'true',
                        'by_reference'=>'false',
                        'allow_delete' =>'true',
                        'data_class' => null,
                        'label' => 'Número(s) teléfonicos',
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
