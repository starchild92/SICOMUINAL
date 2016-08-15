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
                'placeholder'   => 'Seleccione una',
                'label' => 'Aguas Blancas',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('aguasServidas','entity', array(
                'class' => 'SICBundle:AdminAguasServidas',
                'placeholder'   => 'Seleccione una',
                'label' => 'Aguas Servidas',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('gas','entity', array(
                'class' => 'SICBundle:AdminTipoGas',
                'placeholder'   => 'Seleccione una',
                'label' => 'Gas',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('sistemaElectrico','entity', array(
                'class' => 'SICBundle:AdminSistemaElectrico',
                'placeholder'   => 'Seleccione una',
                'label' => 'Sistema Eléctrico',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('recoleccionBasura','entity', array(
                'class' => 'SICBundle:AdminRecoleccionBasura',
                'placeholder'   => 'Seleccione una',
                'label' => 'Sistema de Recolección de Basura',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'fluid multiple search selection')))

            ->add('telefonia','entity', array(
                'class' => 'SICBundle:AdminTipoTelefonia',
                'placeholder'   => 'Seleccione una',
                'multiple' => true,
                'label' => 'Telefonía',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'fluid multiple search selection')))

            ->add('transporte','entity', array(
                'class' => 'SICBundle:AdminTipoTransporte',
                'placeholder'   => 'Seleccione todas las que apliquen',
                'required'  => false,
                'multiple' => true,
                'label' => 'Sistema de transporte',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'fluid multiple search selection')))

            ->add('mecanismoInformacion','entity', array(
                'class' => 'SICBundle:AdminMecanismoInformacion',
                'placeholder'   => 'Seleccione todas las que apliquen',
                'label' => 'Mecanismos de Información',
                'required'  => false,
                'multiple' => true,
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'fluid multiple search selection')))

            ->add('serviciosComunales','entity', array(
                'placeholder'   => 'Seleccione todas las que apliquen',
                'class' => 'SICBundle:AdminServiciosComunales',
                'label' => 'Servicios Comunales',
                'required'  => false,
                'multiple' => true,
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'fluid multiple search selection')))

            ->add('lts_tanque','integer',array(
                'label'     => '¿Tanque? (Lts)',
                'required'  => false))

            ->add('cant_pipotes','integer',array(
                'label'     => 'Cantidad de Pipotes',
                'required'  => false))

            ->add('medidor', 'entity', array(
                'label'     => '¿Tiene medidor de Aguas Blancas?',
                'placeholder'   => 'Elija una',
                'class'         => 'SICBundle:AdminRespCerrada'))

            ->add('empresaGas','entity', array(
                'class' => 'SICBundle:AdminEmpresaGas',
                'placeholder'   => 'Seleccione una',
                'label' => 'Proveedor de Gas',
                'attr'  =>  array(
                    'multiple' => '',
                    'class' => 'ui dropdown')))

            ->add('cantBombonas','integer',array(
                'label'     => 'Cantidad de Cilindros',
                'required'  => false))

            ->add('capacidadBombona','entity', array(
                'class' => 'SICBundle:AdminCapacidadBombona',
                'required'  => false,
                'placeholder'   => 'Seleccione una',
                'label' => 'Capacidad Bombona',
                'attr'  =>  array(
                    'class' => 'ui dropdown')))

            ->add('medidorElectrico', 'entity', array(
                'label'     => '¿Tiene medidor electrico?',
                'placeholder'   => 'Elija una',
                'class'         => 'SICBundle:AdminRespCerrada'))

            ->add('bombillosAhorradores', 'entity', array(
                'label'     => '¿Tiene Bombillos Ahorradores?',
                'placeholder'   => 'Elija una',
                'class'         => 'SICBundle:AdminRespCerrada'))

            ->add('precioBombona','text',array(
                'label'     => 'Precio del Cilindro',
                'required'  => false))

            ->add('duracionBombona','text',array(
                'label'     => 'Duración del Gas',
                'required'  => false,
                'attr'      => array(
                    'placeholder' => 'Ejemplo. 15 días')))
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
