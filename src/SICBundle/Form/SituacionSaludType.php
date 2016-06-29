<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SituacionSaludType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('padecencia','entity', array(
                'class'     => 'SICBundle:AdminTipoPadecencia',
                'label'     => 'Existen En Su Núcleo Familiar Personas Que Padezcan De:',
                'placeholder'   => 'Seleccione todas las que apliquen',
                'multiple' => true,
                'attr'  =>  array(
                    'class' => 'ui dropdown')))
            ->add('ayudaEspecial','collection',array(
                    'required' => false,
                    'type' => new AdminTipoAyudaEspecialType(),
                    'cascade_validation' => true,
                    'attr' => array('class' => 'ayudas'),
                    'allow_add'=>'true',
                    'by_reference'=>'false',
                    'allow_delete' =>'true',
                    'data_class' => null,
                    'label'     => '¿Necesita Usted De Alguna Ayuda Especial Para Familiares Enfermos En Su Hogar? - ¿Cuál(es)?'
                ))
            ->add('situacionExclusion','collection',array(
                    'required' => false,
                    'type' => new AdminTipoSituacionExclusionType(),
                    'cascade_validation' => true,
                    'attr' => array('class' => 'exclusiones'),
                    'allow_add'=>'true',
                    'by_reference'=>'false',
                    'allow_delete' =>'true',
                    'data_class' => null,
                    'label'     => '¿Situación de Exclusión?'
                ))
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'SICBundle\Entity\SituacionSalud'
        ));
    }
}
