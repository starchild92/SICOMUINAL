<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SituacionViviendaType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('cantidadHabitaciones')
            ->add('tipo')
            ->add('tenencia')
            ->add('terrenoPropio')
            ->add('ovc')
            ->add('habitaciones')
            ->add('paredes')
            ->add('techo')
            ->add('enseres')
            ->add('salubridad')
            ->add('presenciaInsectos')
            ->add('mascota')
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
