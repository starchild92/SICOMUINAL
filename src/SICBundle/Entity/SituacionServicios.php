<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SituacionServicios
 *
 * @ORM\Table(name="situacion_servicios")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\SituacionServiciosRepository")
 */
class SituacionServicios
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
     * @ORM\Column(name="aguasBlancas", type="string", length=255)
     */
    private $aguasBlancas;

    /**
     * @var string
     *
     * @ORM\Column(name="aguasServidas", type="string", length=255)
     */
    private $aguasServidas;

    /**
     * @var string
     *
     * @ORM\Column(name="gas", type="string", length=255)
     */
    private $gas;

    /**
     * @var string
     *
     * @ORM\Column(name="sistemaElectrico", type="string", length=255)
     */
    private $sistemaElectrico;

    /**
     * @var string
     *
     * @ORM\Column(name="recoleccionBasura", type="string", length=255)
     */
    private $recoleccionBasura;

    /**
     * @var string
     *
     * @ORM\Column(name="telefonia", type="string", length=255)
     */
    private $telefonia;

    /**
     * @var string
     *
     * @ORM\Column(name="transporte", type="string", length=255)
     */
    private $transporte;

    /**
     * @var string
     *
     * @ORM\Column(name="mecanismoInformacion", type="string", length=255)
     */
    private $mecanismoInformacion;

    /**
     * @var string
     *
     * @ORM\Column(name="serviciosComunales", type="string", length=255)
     */
    private $serviciosComunales;


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
     * Set aguasBlancas
     *
     * @param string $aguasBlancas
     * @return SituacionServicios
     */
    public function setAguasBlancas($aguasBlancas)
    {
        $this->aguasBlancas = $aguasBlancas;

        return $this;
    }

    /**
     * Get aguasBlancas
     *
     * @return string 
     */
    public function getAguasBlancas()
    {
        return $this->aguasBlancas;
    }

    /**
     * Set aguasServidas
     *
     * @param string $aguasServidas
     * @return SituacionServicios
     */
    public function setAguasServidas($aguasServidas)
    {
        $this->aguasServidas = $aguasServidas;

        return $this;
    }

    /**
     * Get aguasServidas
     *
     * @return string 
     */
    public function getAguasServidas()
    {
        return $this->aguasServidas;
    }

    /**
     * Set gas
     *
     * @param string $gas
     * @return SituacionServicios
     */
    public function setGas($gas)
    {
        $this->gas = $gas;

        return $this;
    }

    /**
     * Get gas
     *
     * @return string 
     */
    public function getGas()
    {
        return $this->gas;
    }

    /**
     * Set sistemaElectrico
     *
     * @param string $sistemaElectrico
     * @return SituacionServicios
     */
    public function setSistemaElectrico($sistemaElectrico)
    {
        $this->sistemaElectrico = $sistemaElectrico;

        return $this;
    }

    /**
     * Get sistemaElectrico
     *
     * @return string 
     */
    public function getSistemaElectrico()
    {
        return $this->sistemaElectrico;
    }

    /**
     * Set recoleccionBasura
     *
     * @param string $recoleccionBasura
     * @return SituacionServicios
     */
    public function setRecoleccionBasura($recoleccionBasura)
    {
        $this->recoleccionBasura = $recoleccionBasura;

        return $this;
    }

    /**
     * Get recoleccionBasura
     *
     * @return string 
     */
    public function getRecoleccionBasura()
    {
        return $this->recoleccionBasura;
    }

    /**
     * Set telefonia
     *
     * @param string $telefonia
     * @return SituacionServicios
     */
    public function setTelefonia($telefonia)
    {
        $this->telefonia = $telefonia;

        return $this;
    }

    /**
     * Get telefonia
     *
     * @return string 
     */
    public function getTelefonia()
    {
        return $this->telefonia;
    }

    /**
     * Set transporte
     *
     * @param string $transporte
     * @return SituacionServicios
     */
    public function setTransporte($transporte)
    {
        $this->transporte = $transporte;

        return $this;
    }

    /**
     * Get transporte
     *
     * @return string 
     */
    public function getTransporte()
    {
        return $this->transporte;
    }

    /**
     * Set mecanismoInformacion
     *
     * @param string $mecanismoInformacion
     * @return SituacionServicios
     */
    public function setMecanismoInformacion($mecanismoInformacion)
    {
        $this->mecanismoInformacion = $mecanismoInformacion;

        return $this;
    }

    /**
     * Get mecanismoInformacion
     *
     * @return string 
     */
    public function getMecanismoInformacion()
    {
        return $this->mecanismoInformacion;
    }

    /**
     * Set serviciosComunales
     *
     * @param string $serviciosComunales
     * @return SituacionServicios
     */
    public function setServiciosComunales($serviciosComunales)
    {
        $this->serviciosComunales = $serviciosComunales;

        return $this;
    }

    /**
     * Get serviciosComunales
     *
     * @return string 
     */
    public function getServiciosComunales()
    {
        return $this->serviciosComunales;
    }
}
