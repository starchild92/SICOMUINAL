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
 * @UniqueEntity("cedula")
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
     * @ORM\Column(name="parentesco", type="string", length=255)
     */
    private $parentesco;

    /**
     * @ORM\ManyToOne(targetEntity="AdminNivelInstruccion", cascade={"persist"})
     * @ORM\JoinColumn(name="nivelInstr_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $gradoInstruccion;

    /**
     * @ORM\ManyToOne(targetEntity="AdminProfesion", cascade={"persist"})
     * @ORM\JoinColumn(name="profesion_id", referencedColumnName="id", onDelete="CASCADE")
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
     * Set parentesco
     *
     * @param string $parentesco
     * @return Persona
     */
    public function setParentesco($parentesco)
    {
        $this->parentesco = $parentesco;

        return $this;
    }

    /**
     * Get parentesco
     *
     * @return string 
     */
    public function getParentesco()
    {
        return $this->parentesco;
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
     * Set gradoInstruccion
     *
     * @param \SICBundle\Entity\AdminNivelInstruccion $gradoInstruccion
     * @return Persona
     */
    public function setGradoInstruccion(\SICBundle\Entity\AdminNivelInstruccion $gradoInstruccion = null)
    {
        $this->gradoInstruccion = $gradoInstruccion;

        return $this;
    }

    /**
     * Get gradoInstruccion
     *
     * @return \SICBundle\Entity\AdminNivelInstruccion 
     */
    public function getGradoInstruccion()
    {
        return $this->gradoInstruccion;
    }

    /**
     * Set profesion
     *
     * @param \SICBundle\Entity\AdminProfesion $profesion
     * @return Persona
     */
    public function setProfesion(\SICBundle\Entity\AdminProfesion $profesion = null)
    {
        $this->profesion = $profesion;

        return $this;
    }

    /**
     * Get profesion
     *
     * @return \SICBundle\Entity\AdminProfesion 
     */
    public function getProfesion()
    {
        return $this->profesion;
    }

    /**
     * Set incapacitadoTipo
     *
     * @param \SICBundle\Entity\AdminIncapacidades $incapacitadoTipo
     * @return Persona
     */
    public function setIncapacitadoTipo(\SICBundle\Entity\AdminIncapacidades $incapacitadoTipo = null)
    {
        $this->incapacitadoTipo = $incapacitadoTipo;

        return $this;
    }

    /**
     * Get incapacitadoTipo
     *
     * @return \SICBundle\Entity\AdminIncapacidades 
     */
    public function getIncapacitadoTipo()
    {
        return $this->incapacitadoTipo;
    }

    /**
     * Set pensionadoInstitucion
     *
     * @param \SICBundle\Entity\AdminPensionadoInstitucion $pensionadoInstitucion
     * @return Persona
     */
    public function setPensionadoInstitucion(\SICBundle\Entity\AdminPensionadoInstitucion $pensionadoInstitucion = null)
    {
        $this->pensionadoInstitucion = $pensionadoInstitucion;

        return $this;
    }

    /**
     * Get pensionadoInstitucion
     *
     * @return \SICBundle\Entity\AdminPensionadoInstitucion 
     */
    public function getPensionadoInstitucion()
    {
        return $this->pensionadoInstitucion;
    }
}
