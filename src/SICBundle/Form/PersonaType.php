<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

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
            ->add('sexo')
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