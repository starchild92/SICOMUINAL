<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class GrupoFamiliarType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('apellidos','text', array(
                'label'     => 'Apellidos del Grupo Familiar'))
            // ->add('cantidadMiembros') //Se calcula a medida que se agregan nuevos miembros
            // ->add('tiempoResidencia','text', array(
            //     'label'     => 'Tiempo de Residencia'))
            ->add('sector','text', array(
                'label'     => 'Sector'))
            ->add('direccion','text', array(
                'label'     => 'Calle o Avenida'))
            ->add('numeroCasa','text', array(
                'label'     => 'Número de Casa'))
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'SICBundle\Entity\GrupoFamiliar'
        ));
    }
}
