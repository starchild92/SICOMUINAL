<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
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
            ->add('existenOrganizaciones', EntityType::class, array(
                'class' => 'SICBundle:AdminOrgComunitaria',
                'label'     => '¿Existen organizaciones comunitarias? - ¿Cuál(es)?',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'multiple'  => true,
                'attr'      => array(
                    'multiple' => '',
                    'class' => 'fluid multiple search selection',
                    'required'  => false
            )))

            ->add('participaOrganizacion', 'entity', array(
                'class' => 'SICBundle:AdminRespCerrada',
                'label'     => '¿Participa usted en alguna de ellas?',
                'choice_label' => 'respuesta',
                'attr'  =>  array(
                    'class' => 'ui dropdown'))
            )

            ->add('participaMiembroOrganizacion', 'entity', array(
                'class' => 'SICBundle:AdminRespCerrada',
                'label'     => '¿Participa álgun miembro de la familia?',
                'choice_label' => 'respuesta',
                'attr'  =>  array(
                    'class' => 'ui dropdown'))
            )

            ->add('misionesComunidad', EntityType::class, array(
                'class' => 'SICBundle:AdminMisionesComunidad',
                'label'     => '¿Cuáles Misiones Se Están Implementando En La Comunidad?',
                'placeholder' => 'Selecciona una',
                'choice_label' => 'nombre',
                'multiple'  => true,
                'attr'      => array(
                    'multiple' => '',
                    'class' => 'fluid multiple search selection',
                    'required'  => false
            )))
            
            ->add('preguntasParticipacionComunitaria','collection',array(
                    'required' => false,
                    'type' => new AdminPreguntasParticipacionComunitariaType(),
                    'cascade_validation' => true,
                    'attr' => array('class' => 'preguntas'),
                    'allow_add'=>'true',
                    'by_reference'=>'false',
                    'allow_delete' =>'true',
                    'data_class' => null,
                    'label'     => 'Preguntas de Participación Comunitaria'
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
