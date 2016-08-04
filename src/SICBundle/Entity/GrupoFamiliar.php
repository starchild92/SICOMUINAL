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
     * @var string
     *
     * @ORM\Column(name="direccion", type="string", length=255)
     */
    private $direccion;

    /**
     * @var int
     *
     * @ORM\Column(name="cantidadMiembros", type="integer")
     */
    private $cantidadMiembros;

    /**
     * @var int
     *
     * @ORM\Column(name="numeroCasa", type="integer")
     */
    private $numeroCasa;

    /**
     * @var string
     *
     * @ORM\Column(name="sector", type="string", length=255)
     */
    private $sector;

    /**
     * @var int
     *
     * @ORM\Column(name="tiempoResidencia", type="integer")
     */
    private $tiempoResidencia;


    /**
     * @ORM\ManyToMany(targetEntity="Persona", cascade={"remove", "persist"})
     * @ORM\JoinTable(name="grupo_familiar_personas",
     *      joinColumns={@ORM\JoinColumn(name="grupo_familiar", referencedColumnName="id", onDelete="CASCADE")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="persona", referencedColumnName="id", unique=true, onDelete="CASCADE")}
     *      )
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
     * Set direccion
     *
     * @param string $direccion
     * @return GrupoFamiliar
     */
    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;

        return $this;
    }

    /**
     * Get direccion
     *
     * @return string 
     */
    public function getDireccion()
    {
        return $this->direccion;
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
     * Set numeroCasa
     *
     * @param integer $numeroCasa
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
     * @return integer 
     */
    public function getNumeroCasa()
    {
        return $this->numeroCasa;
    }

    /**
     * Set sector
     *
     * @param string $sector
     * @return GrupoFamiliar
     */
    public function setSector($sector)
    {
        $this->sector = $sector;

        return $this;
    }

    /**
     * Get sector
     *
     * @return string 
     */
    public function getSector()
    {
        return $this->sector;
    }

    /**
     * Set tiempoResidencia
     *
     * @param integer $tiempoResidencia
     * @return GrupoFamiliar
     */
    public function setTiempoResidencia($tiempoResidencia)
    {
        $this->tiempoResidencia = $tiempoResidencia;

        return $this;
    }

    /**
     * Get tiempoResidencia
     *
     * @return integer 
     */
    public function getTiempoResidencia()
    {
        return $this->tiempoResidencia;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->miembros = new \Doctrine\Common\Collections\ArrayCollection();
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
