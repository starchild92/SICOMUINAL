<?php

namespace SICBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class GeneroType extends AbstractType
{
    private $generosChoices;

    public function __construct(array $generosChoices)
    {
        $this->generosChoices = $generosChoices;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'choices' => $this->generosChoices,
        ));
    }

    public function getParent()
    {
        return ChoiceType::class;
    }

}