<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

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
            ->add('nacionalidad')
            ->add('fechaNacimiento', 'date')
            ->add('edad')
            ->add('cne')
            ->add('tiempoEnComunidad')
            ->add('sexo')
            ->add('incapacitado')
            ->add('incapacitadoTipo')
            ->add('pensionado')
            ->add('pensionadoInstitucion')
            ->add('estadoCivil')
            ->add('nivelInstruccion')
            ->add('profesion')
            ->add('trabajaActualmente')
            ->add('telefono')
            ->add('email')
            ->add('ingresoFamiliar')
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
