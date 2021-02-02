<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class NoticiaType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titulo', 'text', array(
                'label' => 'Título de la Noticia'))
            ->add('cuerpo', 'textarea', array(
                'required' => false))
            // ->add('usuario')
            // ->add('fecha', 'datetime')
            // ->add('fechaPub', 'datetime')
            ->add('visibilidad','checkbox', array(
                'required' => false,
                'label' => 'Hacer Visible',
                'attr'      => array(
                    'class' => 'ui toggle checkbox')))
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'SICBundle\Entity\Noticia'
        ));
    }
}
