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
     * @ORM\ManyToOne(targetEntity="AdminTipoPadecencia", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoPadecencia", referencedColumnName="id", onDelete="CASCADE")
     */
    private $padecencia;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoAyudaEspecial", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoAyuEsp", referencedColumnName="id", onDelete="CASCADE")
     */
    private $ayudaEspecial;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoSituacionExclusion", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoSitExcl", referencedColumnName="id", onDelete="CASCADE")
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
     * Set padecencia
     *
     * @param \SICBundle\Entity\AdminTipoPadecencia $padecencia
     * @return SituacionSalud
     */
    public function setPadecencia(\SICBundle\Entity\AdminTipoPadecencia $padecencia = null)
    {
        $this->padecencia = $padecencia;

        return $this;
    }

    /**
     * Get padecencia
     *
     * @return \SICBundle\Entity\AdminTipoPadecencia 
     */
    public function getPadecencia()
    {
        return $this->padecencia;
    }

    /**
     * Set ayudaEspecial
     *
     * @param \SICBundle\Entity\AdminTipoAyudaEspecial $ayudaEspecial
     * @return SituacionSalud
     */
    public function setAyudaEspecial(\SICBundle\Entity\AdminTipoAyudaEspecial $ayudaEspecial = null)
    {
        $this->ayudaEspecial = $ayudaEspecial;

        return $this;
    }

    /**
     * Get ayudaEspecial
     *
     * @return \SICBundle\Entity\AdminTipoAyudaEspecial 
     */
    public function getAyudaEspecial()
    {
        return $this->ayudaEspecial;
    }

    /**
     * Set situacionExclusion
     *
     * @param \SICBundle\Entity\AdminTipoSituacionExclusion $situacionExclusion
     * @return SituacionSalud
     */
    public function setSituacionExclusion(\SICBundle\Entity\AdminTipoSituacionExclusion $situacionExclusion = null)
    {
        $this->situacionExclusion = $situacionExclusion;

        return $this;
    }

    /**
     * Get situacionExclusion
     *
     * @return \SICBundle\Entity\AdminTipoSituacionExclusion 
     */
    public function getSituacionExclusion()
    {
        return $this->situacionExclusion;
    }
}
