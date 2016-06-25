<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * Persona
 *
 * @ORM\Table(name="persona")
 * @ORM\Entity()
 */
class Persona
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
     * @ORM\Column(name="nombre", type="string", length=255)
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="apellido", type="string", length=255)
     */
    private $apellido;

    /**
     * @var string
     *
     * @ORM\Column(name="sexo", type="string", length=255)
     */
    private $sexo;

    /**
     * @var string
     *
     * @ORM\Column(name="cedula", type="string", length=255, unique=true)
     */
    private $cedula;

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
     * @var string
     *
     * @ORM\Column(name="parentezco", type="string", length=255)
     */
    private $parentezco;

    /**
     * @var string
     *
     * @ORM\Column(name="gradoInstruccion", type="string", length=255)
     */
    private $gradoInstruccion;

    /**
     * @var string
     *
     * @ORM\Column(name="profesion", type="string", length=255)
     */
    private $profesion;

    /**
     * @var string
     *
     * @ORM\Column(name="cne", type="string", length=255)
     */
    private $cne;

    /**
     * @var string
     *
     * @ORM\Column(name="embarazoTemprano", type="string", length=255)
     */
    private $embarazoTemprano;

    /**
     * @var string
     *
     * @ORM\Column(name="incapacitado", type="string", length=255)
     */
    private $incapacitado;

    /**
     * @var string
     *
     * @ORM\Column(name="incapacitadoTipo", type="string", length=255)
     */
    private $incapacitadoTipo;

    /**
     * @var string
     *
     * @ORM\Column(name="pensionado", type="string", length=255)
     */
    private $pensionado;

    /**
     * @var string
     *
     * @ORM\Column(name="pensionadoInstitucion", type="string", length=255)
     */
    private $pensionadoInstitucion;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->telefonos = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set nombre
     *
     * @param string $nombre
     * @return Persona
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set apellido
     *
     * @param string $apellido
     * @return Persona
     */
    public function setApellido($apellido)
    {
        $this->apellido = $apellido;

        return $this;
    }

    /**
     * Get apellido
     *
     * @return string 
     */
    public function getApellido()
    {
        return $this->apellido;
    }

    /**
     * Set sexo
     *
     * @param string $sexo
     * @return Persona
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
     * Set cedula
     *
     * @param string $cedula
     * @return Persona
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
     * @return Persona
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

    /**
     * Set edad
     *
     * @param integer $edad
     * @return Persona
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
     * Set parentezco
     *
     * @param string $parentezco
     * @return Persona
     */
    public function setParentezco($parentezco)
    {
        $this->parentezco = $parentezco;

        return $this;
    }

    /**
     * Get parentezco
     *
     * @return string 
     */
    public function getParentezco()
    {
        return $this->parentezco;
    }

    /**
     * Set gradoInstruccion
     *
     * @param string $gradoInstruccion
     * @return Persona
     */
    public function setGradoInstruccion($gradoInstruccion)
    {
        $this->gradoInstruccion = $gradoInstruccion;

        return $this;
    }

    /**
     * Get gradoInstruccion
     *
     * @return string 
     */
    public function getGradoInstruccion()
    {
        return $this->gradoInstruccion;
    }

    /**
     * Set profesion
     *
     * @param string $profesion
     * @return Persona
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
     * Set cne
     *
     * @param string $cne
     * @return Persona
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
     * Set embarazoTemprano
     *
     * @param string $embarazoTemprano
     * @return Persona
     */
    public function setEmbarazoTemprano($embarazoTemprano)
    {
        $this->embarazoTemprano = $embarazoTemprano;

        return $this;
    }

    /**
     * Get embarazoTemprano
     *
     * @return string 
     */
    public function getEmbarazoTemprano()
    {
        return $this->embarazoTemprano;
    }

    /**
     * Set incapacitado
     *
     * @param string $incapacitado
     * @return Persona
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
     * @return Persona
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
     * @return Persona
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
     * @return Persona
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
}
