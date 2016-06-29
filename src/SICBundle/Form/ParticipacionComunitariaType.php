<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
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
            ->add('existenOrganizaciones','collection',array(
                    'required' => false,
                    'type' => new AdminOrgComunitariaType(),
                    'cascade_validation' => true,
                    'attr' => array('class' => 'organizaciones'),
                    'allow_add'=>'true',
                    'by_reference'=>'false',
                    'allow_delete' =>'true',
                    'data_class' => null,
                    'label'     => '¿Existen organizaciones comunitarias? - ¿Cuál(es)?'
                ))

            ->add('participaOrganizacion', ChoiceType::class, array(
                'choices'  => array(
                    'Seleccione' => '',
                    'Si' => 'si',
                    'No' => 'no',
                    // 'Otro' => 'otro'
                ),
                'choices_as_values' => true,
                'label'     => '¿Participa usted en alguna de ellas?',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('participaMiembroOrganizacion', ChoiceType::class, array(
                'choices'  => array(
                    'Seleccione' => '',
                    'Si' => 'si',
                    'No' => 'no',
                    // 'Otro' => 'otro'
                ),
                'choices_as_values' => true,
                'label'     => '¿Participa álgun miembro de la familia?',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('misionesComunidad','entity', array(
                'class' => 'SICBundle:AdminMisionesComunidad',
                'multiple' => true,
                'label'     => '¿Cuáles Misiones Se Están Implementando En La Comunidad?',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))
            
            ->add('preguntasParticipacionComunitaria','collection',array(
                    'required' => false,
                    'type' => new AdminPreguntasParticipacionComunitariaType(),
                    'cascade_validation' => true,
                    'attr' => array('class' => 'preguntas'),
                    'allow_add'=>'true',
                    'by_reference'=>'false',
                    'allow_delete' =>'true',
                    'data_class' => null,
                    'label'     => '¿Existen organizaciones comunitarias? - ¿Cuál(es)?'
                ))

            ->add('areaTabajoCC','entity', array(
                'class' => 'SICBundle:AdminAreaTrabajoCC',
                'multiple' => true,
                'label'     => '¿De crearse un consejo comunal en su comunidad, en cual área de trabajo le gustaría participar?',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))
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
