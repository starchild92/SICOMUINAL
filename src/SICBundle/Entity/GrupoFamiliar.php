<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * GrupoFamiliar
 *
 * @ORM\Table(name="grupo_familiar")
 * @ORM\HasLifecycleCallbacks
 * @ORM\Entity(repositoryClass="SICBundle\Repository\GrupoFamiliarRepository")
 */
class GrupoFamiliar
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
     * @ORM\Column(name="apellidos", type="string", length=255)
     */
    private $apellidos;

    /**
     * @var int
     *
     * @ORM\Column(name="cantidadMiembros", type="integer")
     */
    private $cantidadMiembros;

    /**
     * @var string
     *
     * @ORM\Column(name="avenida", type="string", length=255)
     */
    private $avenida;

    /**
     * @var string
     *
     * @ORM\Column(name="calle", type="string", length=255)
     */
    private $calle;

    /**
     * @var int
     *
     * @ORM\Column(name="numeroCasa", type="string", length=255)
     */
    private $numeroCasa;

    // *
    //  * @var int
    //  *
    //  * @ORM\Column(name="tiempoResidencia", type="integer")
    // private $tiempoResidencia;

    /**
     * @ORM\OneToMany(targetEntity="Persona", cascade={"remove", "persist"}, mappedBy="grupofamiliar")
     */
    private $miembros;
    
    /**
     * @ORM\OneToOne(targetEntity="Planillas", mappedBy="grupoFamiliar")
     */
    private $planilla;

    /**
     * @ORM\PrePersist()
     * @ORM\PreUpdate()
     */
    public function updateCantMiembros()
    {
        $this->cantidadMiembros = sizeof($this->miembros) + 1;
    }

    public function getDireccionCompleta()
    {
        $result = '';

        if ($this->avenida != '') { $result = $result.'Av. '.$this->avenida; }
        if ($this->calle != '') { $result = $result.', c/'.$this->calle; }
        if ($this->numeroCasa != 0) { $result = $result.', #'.$this->numeroCasa; }
        return $result;
    }

    public function getAvenidaCalle()
    {
        return $this->avenida.", ".$this->calle;
    }
    
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->miembros = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set apellidos
     *
     * @param string $apellidos
     * @return GrupoFamiliar
     */
    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;

        return $this;
    }

    /**
     * Get apellidos
     *
     * @return string 
     */
    public function getApellidos()
    {
        return $this->apellidos;
    }

    /**
     * Set cantidadMiembros
     *
     * @param integer $cantidadMiembros
     * @return GrupoFamiliar
     */
    public function setCantidadMiembros($cantidadMiembros)
    {
        $this->cantidadMiembros = $cantidadMiembros;

        return $this;
    }

    /**
     * Get cantidadMiembros
     *
     * @return integer 
     */
    public function getCantidadMiembros()
    {
        return $this->cantidadMiembros;
    }

    /**
     * Set avenida
     *
     * @param string $avenida
     * @return GrupoFamiliar
     */
    public function setAvenida($avenida)
    {
        $this->avenida = $avenida;

        return $this;
    }

    /**
     * Get avenida
     *
     * @return string 
     */
    public function getAvenida()
    {
        return $this->avenida;
    }

    /**
     * Set calle
     *
     * @param string $calle
     * @return GrupoFamiliar
     */
    public function setCalle($calle)
    {
        $this->calle = $calle;

        return $this;
    }

    /**
     * Get calle
     *
     * @return string 
     */
    public function getCalle()
    {
        return $this->calle;
    }

    /**
     * Set numeroCasa
     *
     * @param string $numeroCasa
     * @return GrupoFamiliar
     */
    public function setNumeroCasa($numeroCasa)
    {
        $this->numeroCasa = $numeroCasa;

        return $this;
    }

    /**
     * Get numeroCasa
     *
     * @return string 
     */
    public function getNumeroCasa()
    {
        return $this->numeroCasa;
    }

    /**
     * Add miembros
     *
     * @param \SICBundle\Entity\Persona $miembros
     * @return GrupoFamiliar
     */
    public function addMiembro(\SICBundle\Entity\Persona $miembros)
    {
        $this->miembros[] = $miembros;

        return $this;
    }

    /**
     * Remove miembros
     *
     * @param \SICBundle\Entity\Persona $miembros
     */
    public function removeMiembro(\SICBundle\Entity\Persona $miembros)
    {
        $this->miembros->removeElement($miembros);
    }

    /**
     * Get miembros
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getMiembros()
    {
        return $this->miembros;
    }

    /**
     * Set planilla
     *
     * @param \SICBundle\Entity\Planillas $planilla
     * @return GrupoFamiliar
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
