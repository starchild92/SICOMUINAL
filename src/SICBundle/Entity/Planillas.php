<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Planillas
 *
 * @ORM\Table(name="planillas")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\PlanillasRepository")
 */
class Planillas
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
     * @ORM\Column(name="empadronador", type="string", length=255)
     */
    private $empadronador;

    /**
     * @ORM\OneToOne(targetEntity="JefeGrupoFamiliar", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="jefegFam", referencedColumnName="id", onDelete="CASCADE")
     */
    private $jefeGrupoFamiliar;

    /**
     * @ORM\ManyToMany(targetEntity="Planillas")
     * @ORM\JoinTable(name="planilla_grupoFamiliar",
     *      joinColumns={@ORM\JoinColumn(name="planilla_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="miembros_id", referencedColumnName="id", unique=true)}
     *      )
     */
    private $miembrosGrupoFamiliar;

    /**
     * @var string
     *
     * @ORM\Column(name="situacionEconomica", type="string", length=255)
     */
    private $situacionEconomica;

    /**
     * @var string
     *
     * @ORM\Column(name="situacionVivienda", type="string", length=255)
     */
    private $situacionVivienda;

    /**
     * @var string
     *
     * @ORM\Column(name="situacionSalud", type="string", length=255)
     */
    private $situacionSalud;

    /**
     * @var string
     *
     * @ORM\Column(name="situacionServicios", type="string", length=255)
     */
    private $situacionServicios;

    /**
     * @var string
     *
     * @ORM\Column(name="participacionComunitaria", type="string", length=255)
     */
    private $participacionComunitaria;

    /**
     * @var string
     *
     * @ORM\Column(name="situacionComunidad", type="string", length=255)
     */
    private $situacionComunidad;

    /**
     * @var string
     *
     * @ORM\Column(name="observaciones", type="text")
     */
    private $observaciones;
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->miembrosGrupoFamiliar = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set empadronador
     *
     * @param string $empadronador
     * @return Planillas
     */
    public function setEmpadronador($empadronador)
    {
        $this->empadronador = $empadronador;

        return $this;
    }

    /**
     * Get empadronador
     *
     * @return string 
     */
    public function getEmpadronador()
    {
        return $this->empadronador;
    }

    /**
     * Set situacionEconomica
     *
     * @param string $situacionEconomica
     * @return Planillas
     */
    public function setSituacionEconomica($situacionEconomica)
    {
        $this->situacionEconomica = $situacionEconomica;

        return $this;
    }

    /**
     * Get situacionEconomica
     *
     * @return string 
     */
    public function getSituacionEconomica()
    {
        return $this->situacionEconomica;
    }

    /**
     * Set situacionVivienda
     *
     * @param string $situacionVivienda
     * @return Planillas
     */
    public function setSituacionVivienda($situacionVivienda)
    {
        $this->situacionVivienda = $situacionVivienda;

        return $this;
    }

    /**
     * Get situacionVivienda
     *
     * @return string 
     */
    public function getSituacionVivienda()
    {
        return $this->situacionVivienda;
    }

    /**
     * Set situacionSalud
     *
     * @param string $situacionSalud
     * @return Planillas
     */
    public function setSituacionSalud($situacionSalud)
    {
        $this->situacionSalud = $situacionSalud;

        return $this;
    }

    /**
     * Get situacionSalud
     *
     * @return string 
     */
    public function getSituacionSalud()
    {
        return $this->situacionSalud;
    }

    /**
     * Set situacionServicios
     *
     * @param string $situacionServicios
     * @return Planillas
     */
    public function setSituacionServicios($situacionServicios)
    {
        $this->situacionServicios = $situacionServicios;

        return $this;
    }

    /**
     * Get situacionServicios
     *
     * @return string 
     */
    public function getSituacionServicios()
    {
        return $this->situacionServicios;
    }

    /**
     * Set participacionComunitaria
     *
     * @param string $participacionComunitaria
     * @return Planillas
     */
    public function setParticipacionComunitaria($participacionComunitaria)
    {
        $this->participacionComunitaria = $participacionComunitaria;

        return $this;
    }

    /**
     * Get participacionComunitaria
     *
     * @return string 
     */
    public function getParticipacionComunitaria()
    {
        return $this->participacionComunitaria;
    }

    /**
     * Set situacionComunidad
     *
     * @param string $situacionComunidad
     * @return Planillas
     */
    public function setSituacionComunidad($situacionComunidad)
    {
        $this->situacionComunidad = $situacionComunidad;

        return $this;
    }

    /**
     * Get situacionComunidad
     *
     * @return string 
     */
    public function getSituacionComunidad()
    {
        return $this->situacionComunidad;
    }

    /**
     * Set observaciones
     *
     * @param string $observaciones
     * @return Planillas
     */
    public function setObservaciones($observaciones)
    {
        $this->observaciones = $observaciones;

        return $this;
    }

    /**
     * Get observaciones
     *
     * @return string 
     */
    public function getObservaciones()
    {
        return $this->observaciones;
    }

    /**
     * Set jefeGrupoFamiliar
     *
     * @param \SICBundle\Entity\JefeGrupoFamiliar $jefeGrupoFamiliar
     * @return Planillas
     */
    public function setJefeGrupoFamiliar(\SICBundle\Entity\JefeGrupoFamiliar $jefeGrupoFamiliar = null)
    {
        $this->jefeGrupoFamiliar = $jefeGrupoFamiliar;

        return $this;
    }

    /**
     * Get jefeGrupoFamiliar
     *
     * @return \SICBundle\Entity\JefeGrupoFamiliar 
     */
    public function getJefeGrupoFamiliar()
    {
        return $this->jefeGrupoFamiliar;
    }

    /**
     * Add miembrosGrupoFamiliar
     *
     * @param \SICBundle\Entity\Planillas $miembrosGrupoFamiliar
     * @return Planillas
     */
    public function addMiembrosGrupoFamiliar(\SICBundle\Entity\Planillas $miembrosGrupoFamiliar)
    {
        $this->miembrosGrupoFamiliar[] = $miembrosGrupoFamiliar;

        return $this;
    }

    /**
     * Remove miembrosGrupoFamiliar
     *
     * @param \SICBundle\Entity\Planillas $miembrosGrupoFamiliar
     */
    public function removeMiembrosGrupoFamiliar(\SICBundle\Entity\Planillas $miembrosGrupoFamiliar)
    {
        $this->miembrosGrupoFamiliar->removeElement($miembrosGrupoFamiliar);
    }

    /**
     * Get miembrosGrupoFamiliar
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getMiembrosGrupoFamiliar()
    {
        return $this->miembrosGrupoFamiliar;
    }
}
