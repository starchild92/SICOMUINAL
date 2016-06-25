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
     * @ORM\OneToOne(targetEntity="SituacionEconomica", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitEco", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionEconomica;

    /**
     * @ORM\OneToOne(targetEntity="SituacionVivienda", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitViv", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionVivienda;

    /**
     * @ORM\OneToOne(targetEntity="SituacionSalud", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitSal", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionSalud;

    /**
     * @ORM\OneToOne(targetEntity="SituacionServicios", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitServ", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionServicios;

    /**
     * @ORM\OneToOne(targetEntity="ParticipacionComunitaria", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="partCom", referencedColumnName="id", onDelete="CASCADE")
     */
    private $participacionComunitaria;

    /**
     * @ORM\OneToOne(targetEntity="SituacionComunidad", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitCom", referencedColumnName="id", onDelete="CASCADE")
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

    /**
     * Set situacionEconomica
     *
     * @param \SICBundle\Entity\SituacionEconomica $situacionEconomica
     * @return Planillas
     */
    public function setSituacionEconomica(\SICBundle\Entity\SituacionEconomica $situacionEconomica = null)
    {
        $this->situacionEconomica = $situacionEconomica;

        return $this;
    }

    /**
     * Get situacionEconomica
     *
     * @return \SICBundle\Entity\SituacionEconomica 
     */
    public function getSituacionEconomica()
    {
        return $this->situacionEconomica;
    }

    /**
     * Set situacionVivienda
     *
     * @param \SICBundle\Entity\SituacionVivienda $situacionVivienda
     * @return Planillas
     */
    public function setSituacionVivienda(\SICBundle\Entity\SituacionVivienda $situacionVivienda = null)
    {
        $this->situacionVivienda = $situacionVivienda;

        return $this;
    }

    /**
     * Get situacionVivienda
     *
     * @return \SICBundle\Entity\SituacionVivienda 
     */
    public function getSituacionVivienda()
    {
        return $this->situacionVivienda;
    }

    /**
     * Set situacionSalud
     *
     * @param \SICBundle\Entity\SituacionSalud $situacionSalud
     * @return Planillas
     */
    public function setSituacionSalud(\SICBundle\Entity\SituacionSalud $situacionSalud = null)
    {
        $this->situacionSalud = $situacionSalud;

        return $this;
    }

    /**
     * Get situacionSalud
     *
     * @return \SICBundle\Entity\SituacionSalud 
     */
    public function getSituacionSalud()
    {
        return $this->situacionSalud;
    }

    /**
     * Set situacionServicios
     *
     * @param \SICBundle\Entity\SituacionServicios $situacionServicios
     * @return Planillas
     */
    public function setSituacionServicios(\SICBundle\Entity\SituacionServicios $situacionServicios = null)
    {
        $this->situacionServicios = $situacionServicios;

        return $this;
    }

    /**
     * Get situacionServicios
     *
     * @return \SICBundle\Entity\SituacionServicios 
     */
    public function getSituacionServicios()
    {
        return $this->situacionServicios;
    }

    /**
     * Set participacionComunitaria
     *
     * @param \SICBundle\Entity\ParticipacionComunitaria $participacionComunitaria
     * @return Planillas
     */
    public function setParticipacionComunitaria(\SICBundle\Entity\ParticipacionComunitaria $participacionComunitaria = null)
    {
        $this->participacionComunitaria = $participacionComunitaria;

        return $this;
    }

    /**
     * Get participacionComunitaria
     *
     * @return \SICBundle\Entity\ParticipacionComunitaria 
     */
    public function getParticipacionComunitaria()
    {
        return $this->participacionComunitaria;
    }

    /**
     * Set situacionComunidad
     *
     * @param \SICBundle\Entity\SituacionComunidad $situacionComunidad
     * @return Planillas
     */
    public function setSituacionComunidad(\SICBundle\Entity\SituacionComunidad $situacionComunidad = null)
    {
        $this->situacionComunidad = $situacionComunidad;

        return $this;
    }

    /**
     * Get situacionComunidad
     *
     * @return \SICBundle\Entity\SituacionComunidad 
     */
    public function getSituacionComunidad()
    {
        return $this->situacionComunidad;
    }
}
