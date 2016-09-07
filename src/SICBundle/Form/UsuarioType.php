<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Symfony\Component\Form\Extension\Core\Type\DateType;

class UsuarioType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $permissions = array(
            'ROLE_ADMIN'    => 'Administrador',
            'ROLE_USER'     => 'Empadronador',
        );
        
        $builder
            ->add('primerNombre')
            ->add('segundoNombre')
            ->add('primerApellido')
            ->add('segundoApellido')
            ->add('cedula')
            ->add('fechaNacimiento', DateType::class, array(
                'widget' => 'single_text',
                'html5' => false,
                'label' => 'Fecha de Nacimiento',
                'attr' => ['class' => 'js-datepicker', 'placeholder' => 'AAAA-MM-DD'],
            ))
            ->add('telefono',
                    'collection',array(
                        'required' => false,
                        'type' => new TelefonoType(),
                        'cascade_validation' => true,
                        'attr' => array('class' => 'telefonos'),
                        'allow_add'=>'true',
                        'by_reference'=>'false',
                        'allow_delete' =>'true',
                        'data_class' => null,
                        'label' => 'Número(s) teléfonicos',
                        ))
            ->add('enabled', 'choice', array(
                'label' => 'Estado de la Cuenta',
                'choices'   => array(
                    '1' => 'Cuenta Activa',
                    '0' => 'Cuenta Inactiva')))
            ->add('roles','choice',array(
                    'label'   => 'Elija el Rol',
                    'choices' => $permissions,
                    'multiple' => true,
                    'attr' => array(
                        'multiple' => '',
                        'class' => 'ui dropdown')
                ))
        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'SICBundle\Entity\Usuario'
        ));
    }

    public function getParent()
    {
        return 'fos_user_registration';
    }

    public function getBlockPrefix()
    {
        return 'app_user_registration';
    }

    public function getName()
    {
        return $this->getBlockPrefix();
    }
}
