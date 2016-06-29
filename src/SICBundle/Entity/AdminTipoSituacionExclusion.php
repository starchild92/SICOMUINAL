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
     * @var string
     *
     * @ORM\Column(name="situacion", type="string", length=255)
     */
    private $situacion;

    /**
     * @var int
     *
     * @ORM\Column(name="cantidad", type="integer")
     */
    private $cantidad;


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
     * Set situacion
     *
     * @param string $situacion
     * @return AdminTipoSituacionExclusion
     */
    public function setSituacion($situacion)
    {
        $this->situacion = $situacion;

        return $this;
    }

    /**
     * Get situacion
     *
     * @return string 
     */
    public function getSituacion()
    {
        return $this->situacion;
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
}
