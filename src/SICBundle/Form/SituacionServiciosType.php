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
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('aguasServidas')
            ->add('gas')
            ->add('sistemaElectrico')
            ->add('recoleccionBasura')
            ->add('telefonia')
            ->add('transporte')
            ->add('mecanismoInformacion')
            ->add('serviciosComunales')
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
