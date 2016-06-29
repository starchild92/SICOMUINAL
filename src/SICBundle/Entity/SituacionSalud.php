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
     * @ORM\ManyToMany(targetEntity="AdminTipoPadecencia", cascade={"persist"})
     * @ORM\JoinTable(name="sitSalud_padecencia",
     *      joinColumns={@ORM\JoinColumn(name="sitSalud_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="padecencia_id", referencedColumnName="id")}
     *      )
     */
    private $padecencia;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoAyudaEspecial", cascade={"persist"})
     * @ORM\JoinTable(name="sitSalud_ayu",
     *      joinColumns={@ORM\JoinColumn(name="sitSalud_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="ayuda_id", referencedColumnName="id")}
     *      )
     */
    private $ayudaEspecial;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoSituacionExclusion", cascade={"persist"})
     * @ORM\JoinTable(name="sitSalud_exc",
     *      joinColumns={@ORM\JoinColumn(name="sitSalud_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="exclusion_id", referencedColumnName="id")}
     *      )
     */
    private $situacionExclusion;
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->padecencia = new \Doctrine\Common\Collections\ArrayCollection();
        $this->ayudaEspecial = new \Doctrine\Common\Collections\ArrayCollection();
        $this->situacionExclusion = new \Doctrine\Common\Collections\ArrayCollection();
    }

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
     * Add padecencia
     *
     * @param \SICBundle\Entity\AdminTipoPadecencia $padecencia
     * @return SituacionSalud
     */
    public function addPadecencium(\SICBundle\Entity\AdminTipoPadecencia $padecencia)
    {
        $this->padecencia[] = $padecencia;

        return $this;
    }

    /**
     * Remove padecencia
     *
     * @param \SICBundle\Entity\AdminTipoPadecencia $padecencia
     */
    public function removePadecencium(\SICBundle\Entity\AdminTipoPadecencia $padecencia)
    {
        $this->padecencia->removeElement($padecencia);
    }

    /**
     * Get padecencia
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getPadecencia()
    {
        return $this->padecencia;
    }

    /**
     * Add ayudaEspecial
     *
     * @param \SICBundle\Entity\AdminTipoAyudaEspecial $ayudaEspecial
     * @return SituacionSalud
     */
    public function addAyudaEspecial(\SICBundle\Entity\AdminTipoAyudaEspecial $ayudaEspecial)
    {
        $this->ayudaEspecial[] = $ayudaEspecial;

        return $this;
    }

    /**
     * Remove ayudaEspecial
     *
     * @param \SICBundle\Entity\AdminTipoAyudaEspecial $ayudaEspecial
     */
    public function removeAyudaEspecial(\SICBundle\Entity\AdminTipoAyudaEspecial $ayudaEspecial)
    {
        $this->ayudaEspecial->removeElement($ayudaEspecial);
    }

    /**
     * Get ayudaEspecial
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getAyudaEspecial()
    {
        return $this->ayudaEspecial;
    }

    /**
     * Add situacionExclusion
     *
     * @param \SICBundle\Entity\AdminTipoSituacionExclusion $situacionExclusion
     * @return SituacionSalud
     */
    public function addSituacionExclusion(\SICBundle\Entity\AdminTipoSituacionExclusion $situacionExclusion)
    {
        $this->situacionExclusion[] = $situacionExclusion;

        return $this;
    }

    /**
     * Remove situacionExclusion
     *
     * @param \SICBundle\Entity\AdminTipoSituacionExclusion $situacionExclusion
     */
    public function removeSituacionExclusion(\SICBundle\Entity\AdminTipoSituacionExclusion $situacionExclusion)
    {
        $this->situacionExclusion->removeElement($situacionExclusion);
    }

    /**
     * Get situacionExclusion
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getSituacionExclusion()
    {
        return $this->situacionExclusion;
    }
}
