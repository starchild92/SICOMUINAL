<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SituacionComunidad
 *
 * @ORM\Table(name="situacion_comunidad")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\SituacionComunidadRepository")
 */
class SituacionComunidad
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="preguntasSituacionComunidad", type="text")
     */
    private $preguntasSituacionComunidad;

    /**
     * @ORM\OneToOne(targetEntity="Planillas", mappedBy="situacionComunidad")
     */
    private $planilla;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set preguntasSituacionComunidad
     *
     * @param string $preguntasSituacionComunidad
     * @return SituacionComunidad
     */
    public function setPreguntasSituacionComunidad($preguntasSituacionComunidad)
    {
        $this->preguntasSituacionComunidad = $preguntasSituacionComunidad;

        return $this;
    }

    /**
     * Get preguntasSituacionComunidad
     *
     * @return string 
     */
    public function getPreguntasSituacionComunidad()
    {
        return $this->preguntasSituacionComunidad;
    }

    /**
     * Set planilla
     *
     * @param \SICBundle\Entity\Planillas $planilla
     * @return SituacionComunidad
     */
    public function setPlanilla(\SICBundle\Entity\Planillas $planilla = null)
    {
        $this->planilla = $planilla;

        return $this;
    }

    /**
     * Get planilla
     *
     * @return \SICBundle\Entity\Planillas 
     */
    public function getPlanilla()
    {
        return $this->planilla;
    }
}
