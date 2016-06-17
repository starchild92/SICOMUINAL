<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SituacionSalud
 *
 * @ORM\Table(name="situacion_salud")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\SituacionSaludRepository")
 */
class SituacionSalud
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
     * @ORM\Column(name="enfermedad", type="string", length=255)
     */
    private $enfermedad;

    /**
     * @var string
     *
     * @ORM\Column(name="ayudaEspecial", type="string", length=255)
     */
    private $ayudaEspecial;

    /**
     * @var string
     *
     * @ORM\Column(name="situacionExclusion", type="string", length=255)
     */
    private $situacionExclusion;


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
     * Set enfermedad
     *
     * @param string $enfermedad
     * @return SituacionSalud
     */
    public function setEnfermedad($enfermedad)
    {
        $this->enfermedad = $enfermedad;

        return $this;
    }

    /**
     * Get enfermedad
     *
     * @return string 
     */
    public function getEnfermedad()
    {
        return $this->enfermedad;
    }

    /**
     * Set ayudaEspecial
     *
     * @param string $ayudaEspecial
     * @return SituacionSalud
     */
    public function setAyudaEspecial($ayudaEspecial)
    {
        $this->ayudaEspecial = $ayudaEspecial;

        return $this;
    }

    /**
     * Get ayudaEspecial
     *
     * @return string 
     */
    public function getAyudaEspecial()
    {
        return $this->ayudaEspecial;
    }

    /**
     * Set situacionExclusion
     *
     * @param string $situacionExclusion
     * @return SituacionSalud
     */
    public function setSituacionExclusion($situacionExclusion)
    {
        $this->situacionExclusion = $situacionExclusion;

        return $this;
    }

    /**
     * Get situacionExclusion
     *
     * @return string 
     */
    public function getSituacionExclusion()
    {
        return $this->situacionExclusion;
    }
}
