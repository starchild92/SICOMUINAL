<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminTipoSituacionExclusion
 *
 * @ORM\Table(name="admin_tipo_situacion_exclusion")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminTipoSituacionExclusionRepository")
 */
class AdminTipoSituacionExclusion
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
     * @ORM\ManyToOne(targetEntity="AdminTipoSituacion", cascade={"persist"})
     * @ORM\JoinColumn(name="situacion_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacion;

    /**
     * @var int
     *
     * @ORM\Column(name="cantidad", type="integer")
     */
    private $cantidad;

    public function __toString(){ return $this->situacion; }

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
     * Set cantidad
     *
     * @param integer $cantidad
     * @return AdminTipoSituacionExclusion
     */
    public function setCantidad($cantidad)
    {
        $this->cantidad = $cantidad;

        return $this;
    }

    /**
     * Get cantidad
     *
     * @return integer 
     */
    public function getCantidad()
    {
        return $this->cantidad;
    }

    /**
     * Set situacion
     *
     * @param \SICBundle\Entity\AdminTipoSituacion $situacion
     * @return AdminTipoSituacionExclusion
     */
    public function setSituacion(\SICBundle\Entity\AdminTipoSituacion $situacion = null)
    {
        $this->situacion = $situacion;

        return $this;
    }

    /**
     * Get situacion
     *
     * @return \SICBundle\Entity\AdminTipoSituacion 
     */
    public function getSituacion()
    {
        return $this->situacion;
    }
}
