<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ParticipacionComunitariaType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('existenOrganizaciones')
            ->add('participaOrganizacion')
            ->add('participaMiembroOrganizacion')
            ->add('misionesComunidad')
            ->add('preguntasParticipacionComunitaria')
            ->add('areaTabajoCC')
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'SICBundle\Entity\ParticipacionComunitaria'
        ));
    }
}
