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
     * @ORM\ManyToOne(targetEntity="Usuario", inversedBy="planillas")
     * @ORM\JoinColumn(name="usuario_id", referencedColumnName="id")
     */
    private $empadronador;

    /**
     * @ORM\OneToOne(targetEntity="JefeGrupoFamiliar", inversedBy="planilla", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="jefegFam", referencedColumnName="id", onDelete="CASCADE")
     */
    private $jefeGrupoFamiliar;

    /**
     * @ORM\OneToOne(targetEntity="GrupoFamiliar", inversedBy="planilla", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="grupoFam", referencedColumnName="id", onDelete="CASCADE")
     */
    private $grupoFamiliar;

    /**
     * @ORM\OneToOne(targetEntity="SituacionEconomica", inversedBy="planilla", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitEco", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionEconomica;

    /**
     * @ORM\OneToOne(targetEntity="SituacionVivienda", inversedBy="planilla", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitViv", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionVivienda;

    /**
     * @ORM\OneToOne(targetEntity="SituacionSalud", inversedBy="planilla", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitSal", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionSalud;

    /**
     * @ORM\OneToOne(targetEntity="SituacionServicios", inversedBy="planilla", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitServ", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionServicios;

    /**
     * @ORM\OneToOne(targetEntity="ParticipacionComunitaria", inversedBy="planilla", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="partCom", referencedColumnName="id", onDelete="CASCADE")
     */
    private $participacionComunitaria;

    /**
     * @ORM\OneToOne(targetEntity="SituacionComunidad", inversedBy="planilla", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sitCom", referencedColumnName="id", onDelete="CASCADE")
     */
    private $situacionComunidad;

    /**
     * @var string
     *
     * @ORM\Column(name="observaciones", type="text", nullable=true)
     */
    private $observaciones;
    
    /**
     * @var integer
     *
     * @ORM\Column(name="terminada", type="integer")
     */
    private $terminada;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha", type="datetime")
     */
    private $fecha;

    /**
     * @ORM\PrePersist
     * @ORM\PreUpdate
     */
    public function updatedTimestamps()
    {
        $this->fecha = \DateTime('now');
    }

    public function fecha()
    {
        $fecha = $this->getFecha();
        $dias = array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
        $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

        return $dias[$fecha->format('w')].", ".$fecha->format('d')." de ".$meses[$fecha->format('n')-1]. " ".$fecha->format('Y');
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
     * Set grupoFamiliar
     *
     * @param \SICBundle\Entity\GrupoFamiliar $grupoFamiliar
     * @return Planillas
     */
    public function setGrupoFamiliar(\SICBundle\Entity\GrupoFamiliar $grupoFamiliar = null)
    {
        $this->grupoFamiliar = $grupoFamiliar;

        return $this;
    }

    /**
     * Get grupoFamiliar
     *
     * @return \SICBundle\Entity\GrupoFamiliar 
     */
    public function getGrupoFamiliar()
    {
        return $this->grupoFamiliar;
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

    /**
     * Set empadronador
     *
     * @param \SICBundle\Entity\Usuario $empadronador
     * @return Planillas
     */
    public function setEmpadronador(\SICBundle\Entity\Usuario $empadronador = null)
    {
        $this->empadronador = $empadronador;

        return $this;
    }

    /**
     * Get empadronador
     *
     * @return \SICBundle\Entity\Usuario 
     */
    public function getEmpadronador()
    {
        return $this->empadronador;
    }

    /**
     * Set terminada
     *
     * @param integer $terminada
     * @return Planillas
     */
    public function setTerminada($terminada)
    {
        $this->terminada = $terminada;

        return $this;
    }

    /**
     * Get terminada
     *
     * @return integer 
     */
    public function getTerminada()
    {
        return $this->terminada;
    }

    /**
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return Planillas
     */
    public function setFecha($fecha)
    {
        $this->fecha = $fecha;

        return $this;
    }

    /**
     * Get fecha
     *
     * @return \DateTime 
     */
    public function getFecha()
    {
        return $this->fecha;
    }
}
