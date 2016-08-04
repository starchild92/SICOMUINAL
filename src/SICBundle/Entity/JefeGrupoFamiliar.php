<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * JefeGrupoFamiliar
 *
 * @ORM\Table(name="jefe_grupo_familiar")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\JefeGrupoFamiliarRepository")
 */
class JefeGrupoFamiliar
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
     * @ORM\Column(name="nombres", type="string", length=255)
     */
    private $nombres;

    /**
     * @var string
     *
     * @ORM\Column(name="apellidos", type="string", length=255)
     */
    private $apellidos;

    /**
     * @var string
     *
     * @ORM\Column(name="cedula", type="string", length=255, unique=true)
     */
    private $cedula;

    /**
     * @ORM\ManyToOne(targetEntity="AdminNacionalidad", cascade={"persist"})
     * @ORM\JoinColumn(name="nac_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $nacionalidad;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechaNacimiento", type="date")
     */
    private $fechaNacimiento;

    /**
     * @var int
     *
     * @ORM\Column(name="edad", type="integer")
     */
    private $edad;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="cne", referencedColumnName="id", onDelete="CASCADE")
     */
    private $cne;

    /**
     * @var string
     *
     * @ORM\Column(name="tiempoEnComunidad", type="string", length=255)
     */
    private $tiempoEnComunidad;

    /**
     * @var string
     *
     * @ORM\Column(name="sexo", type="string", length=20)
     */
    private $sexo;

    /**
     * @var string
     *
     * @ORM\Column(name="incapacitado", type="string", length=255)
     */
    private $incapacitado;

    /**
     * @ORM\ManyToOne(targetEntity="AdminIncapacidades", cascade={"persist"})
     * @ORM\JoinColumn(name="incap_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $incapacitadoTipo;

    /**
     * @var string
     *
     * @ORM\Column(name="pensionado", type="string", length=255)
     */
    private $pensionado;

    /**
     * @ORM\ManyToOne(targetEntity="AdminPensionadoInstitucion", cascade={"persist"})
     * @ORM\JoinColumn(name="pensIns_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $pensionadoInstitucion;

    /**
     * @ORM\ManyToOne(targetEntity="AdminEstadoCivil", cascade={"persist"})
     * @ORM\JoinColumn(name="edoCivil_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $estadoCivil;

    /**
     * @ORM\ManyToOne(targetEntity="AdminNivelInstruccion", cascade={"persist"})
     * @ORM\JoinColumn(name="nivelIns_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $nivelInstruccion;

    /**
     * @ORM\ManyToOne(targetEntity="AdminProfesion", cascade={"persist"})
     * @ORM\JoinColumn(name="profesion_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $profesion;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="respC_id_3", referencedColumnName="id", onDelete="CASCADE")
     */
    private $trabajaActualmente;

    /**
     * @ORM\ManyToMany(targetEntity="Telefono", cascade={"persist"})
     * @ORM\JoinTable(name="jgf_telefonos",
     *      joinColumns={@ORM\JoinColumn(name="jefeGF_id", referencedColumnName="id", onDelete="cascade")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="telefono_id", referencedColumnName="id", onDelete="cascade", unique=true)}
     *      )
     */
    private $telefono;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=255, nullable=true)
     */
    private $email;

    /**
     * @ORM\ManyToOne(targetEntity="AdminClasIngresoFamiliar", cascade={"persist"})
     * @ORM\JoinColumn(name="ingFam_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $ingresoFamiliar;

    /**
     * @var float
     *
     * @ORM\Column(name="ingresoMensual", type="float")
     */
    private $ingresoMensual;

    /**
     * @ORM\OneToOne(targetEntity="Planillas", mappedBy="jefeGrupoFamiliar")
     */
    private $planilla;

    /**
     * @ORM\Column(name="recibir_correo", type="boolean")
     */
    private $recibir_correo;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    public function nombreyapellido() { return $this->nombres.' '.$this->apellidos; }
    public function apellido_nombre_cuaderno() { return $this->apellidos.'<br>'.$this->nombres; }
    public function apellido_nombre() { return $this->apellidos.' '.$this->nombres; }
    public function cedula(){ return number_format($this->cedula, 0, '', '.'); }
    public function direccion(){
        $planilla = $this->planilla;
        if ($planilla != NULL) {
            $grupo = $planilla->getGrupoFamiliar();
            if ($grupo != NULL) {
                return $grupo->getDireccionCompleta();
            }
        }

        return "";
    }

    /**
     * Set nombres
     *
     * @param string $nombres
     * @return JefeGrupoFamiliar
     */
    public function setNombres($nombres)
    {
        $this->nombres = $nombres;

        return $this;
    }

    /**
     * Get nombres
     *
     * @return string 
     */
    public function getNombres()
    {
        return $this->nombres;
    }

    /**
     * Set apellidos
     *
     * @param string $apellidos
     * @return JefeGrupoFamiliar
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
     * Set cedula
     *
     * @param string $cedula
     * @return JefeGrupoFamiliar
     */
    public function setCedula($cedula)
    {
        $this->cedula = $cedula;

        return $this;
    }

    /**
     * Get cedula
     *
     * @return string 
     */
    public function getCedula()
    {
        return $this->cedula;
    }

    /**
     * Set fechaNacimiento
     *
     * @param \DateTime $fechaNacimiento
     * @return JefeGrupoFamiliar
     */
    public function setFechaNacimiento($fechaNacimiento)
    {
        $this->fechaNacimiento = $fechaNacimiento;

        return $this;
    }

    /**
     * Get fechaNacimiento
     *
     * @return \DateTime 
     */
    public function getFechaNacimiento()
    {
        return $this->fechaNacimiento;
    }

    public function fechaNacimiento()
    {
        $fecha = $this->getFechaNacimiento();
        $dias = array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
        $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

        return $dias[$fecha->format('w')].", ".$fecha->format('d')." de ".$meses[$fecha->format('n')-1]. " ".$fecha->format('Y');
    }

    /**
     * Set edad
     *
     * @param integer $edad
     * @return JefeGrupoFamiliar
     */
    public function setEdad($edad)
    {
        $this->edad = $edad;

        return $this;
    }

    /**
     * Get edad
     *
     * @return integer 
     */
    public function getEdad()
    {
        return $this->edad;
    }

    /**
     * Set cne
     *
     * @param string $cne
     * @return JefeGrupoFamiliar
     */
    public function setCne($cne)
    {
        $this->cne = $cne;

        return $this;
    }

    /**
     * Get cne
     *
     * @return string 
     */
    public function getCne()
    {
        return $this->cne;
    }

    /**
     * Set tiempoEnComunidad
     *
     * @param string $tiempoEnComunidad
     * @return JefeGrupoFamiliar
     */
    public function setTiempoEnComunidad($tiempoEnComunidad)
    {
        $this->tiempoEnComunidad = $tiempoEnComunidad;

        return $this;
    }

    /**
     * Get tiempoEnComunidad
     *
     * @return string 
     */
    public function getTiempoEnComunidad()
    {
        return $this->tiempoEnComunidad;
    }

    /**
     * Set sexo
     *
     * @param string $sexo
     * @return JefeGrupoFamiliar
     */
    public function setSexo($sexo)
    {
        $this->sexo = $sexo;

        return $this;
    }

    /**
     * Get sexo
     *
     * @return string 
     */
    public function getSexo()
    {
        return $this->sexo;
    }

    /**
     * Set incapacitado
     *
     * @param string $incapacitado
     * @return JefeGrupoFamiliar
     */
    public function setIncapacitado($incapacitado)
    {
        $this->incapacitado = $incapacitado;

        return $this;
    }

    /**
     * Get incapacitado
     *
     * @return string 
     */
    public function getIncapacitado()
    {
        return $this->incapacitado;
    }

    /**
     * Set incapacitadoTipo
     *
     * @param string $incapacitadoTipo
     * @return JefeGrupoFamiliar
     */
    public function setIncapacitadoTipo($incapacitadoTipo)
    {
        $this->incapacitadoTipo = $incapacitadoTipo;

        return $this;
    }

    /**
     * Get incapacitadoTipo
     *
     * @return string 
     */
    public function getIncapacitadoTipo()
    {
        return $this->incapacitadoTipo;
    }

    /**
     * Set pensionado
     *
     * @param string $pensionado
     * @return JefeGrupoFamiliar
     */
    public function setPensionado($pensionado)
    {
        $this->pensionado = $pensionado;

        return $this;
    }

    /**
     * Get pensionado
     *
     * @return string 
     */
    public function getPensionado()
    {
        return $this->pensionado;
    }

    /**
     * Set pensionadoInstitucion
     *
     * @param string $pensionadoInstitucion
     * @return JefeGrupoFamiliar
     */
    public function setPensionadoInstitucion($pensionadoInstitucion)
    {
        $this->pensionadoInstitucion = $pensionadoInstitucion;

        return $this;
    }

    /**
     * Get pensionadoInstitucion
     *
     * @return string 
     */
    public function getPensionadoInstitucion()
    {
        return $this->pensionadoInstitucion;
    }

    /**
     * Set estadoCivil
     *
     * @param string $estadoCivil
     * @return JefeGrupoFamiliar
     */
    public function setEstadoCivil($estadoCivil)
    {
        $this->estadoCivil = $estadoCivil;

        return $this;
    }

    /**
     * Get estadoCivil
     *
     * @return string 
     */
    public function getEstadoCivil()
    {
        return $this->estadoCivil;
    }

    /**
     * Set nivelInstruccion
     *
     * @param string $nivelInstruccion
     * @return JefeGrupoFamiliar
     */
    public function setNivelInstruccion($nivelInstruccion)
    {
        $this->nivelInstruccion = $nivelInstruccion;

        return $this;
    }

    /**
     * Get nivelInstruccion
     *
     * @return string 
     */
    public function getNivelInstruccion()
    {
        return $this->nivelInstruccion;
    }

    /**
     * Set profesion
     *
     * @param string $profesion
     * @return JefeGrupoFamiliar
     */
    public function setProfesion($profesion)
    {
        $this->profesion = $profesion;

        return $this;
    }

    /**
     * Get profesion
     *
     * @return string 
     */
    public function getProfesion()
    {
        return $this->profesion;
    }

    /**
     * Set trabajaActualmente
     *
     * @param string $trabajaActualmente
     * @return JefeGrupoFamiliar
     */
    public function setTrabajaActualmente($trabajaActualmente)
    {
        $this->trabajaActualmente = $trabajaActualmente;

        return $this;
    }

    /**
     * Get trabajaActualmente
     *
     * @return string 
     */
    public function getTrabajaActualmente()
    {
        return $this->trabajaActualmente;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return JefeGrupoFamiliar
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set ingresoFamiliar
     *
     * @param string $ingresoFamiliar
     * @return JefeGrupoFamiliar
     */
    public function setIngresoFamiliar($ingresoFamiliar)
    {
        $this->ingresoFamiliar = $ingresoFamiliar;

        return $this;
    }

    /**
     * Get ingresoFamiliar
     *
     * @return string 
     */
    public function getIngresoFamiliar()
    {
        return $this->ingresoFamiliar;
    }

    /**
     * Set ingresoMensual
     *
     * @param float $ingresoMensual
     * @return JefeGrupoFamiliar
     */
    public function setIngresoMensual($ingresoMensual)
    {
        $this->ingresoMensual = $ingresoMensual;

        return $this;
    }

    /**
     * Get ingresoMensual
     *
     * @return float 
     */
    public function getIngresoMensual()
    {
        return $this->ingresoMensual;
    }

    /**
     * Set nacionalidad
     *
     * @param \SICBundle\Entity\AdminNacionalidad $nacionalidad
     * @return JefeGrupoFamiliar
     */
    public function setNacionalidad(\SICBundle\Entity\AdminNacionalidad $nacionalidad = null)
    {
        $this->nacionalidad = $nacionalidad;

        return $this;
    }

    /**
     * Get nacionalidad
     *
     * @return \SICBundle\Entity\AdminNacionalidad 
     */
    public function getNacionalidad()
    {
        return $this->nacionalidad;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->telefono = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add telefono
     *
     * @param \SICBundle\Entity\Telefono $telefono
     * @return JefeGrupoFamiliar
     */
    public function addTelefono(\SICBundle\Entity\Telefono $telefono)
    {
        $this->telefono[] = $telefono;

        return $this;
    }

    /**
     * Remove telefono
     *
     * @param \SICBundle\Entity\Telefono $telefono
     */
    public function removeTelefono(\SICBundle\Entity\Telefono $telefono)
    {
        $this->telefono->removeElement($telefono);
    }

    /**
     * Get telefono
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set planilla
     *
     * @param \SICBundle\Entity\Planillas $planilla
     * @return JefeGrupoFamiliar
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

    /**
     * Set recibir_correo
     *
     * @param boolean $recibirCorreo
     * @return JefeGrupoFamiliar
     */
    public function setRecibirCorreo($recibirCorreo)
    {
        $this->recibir_correo = $recibirCorreo;

        return $this;
    }

    /**
     * Get recibir_correo
     *
     * @return boolean 
     */
    public function getRecibirCorreo()
    {
        return $this->recibir_correo;
    }

    public function recibir_correo()
    {
        if ($this->recibir_correo) {
            return true;
        }else{
            return false;
        }
    }
}
