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
     * @ORM\ManyToOne(targetEntity="AdminAguasBlancas", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="aguasBlancas", referencedColumnName="id", onDelete="CASCADE")
     */
    private $aguasBlancas;

    /**
     * @ORM\ManyToOne(targetEntity="AdminAguasServidas", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="aguasServidas", referencedColumnName="id", onDelete="CASCADE")
     */
    private $aguasServidas;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoGas", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="gas", referencedColumnName="id", onDelete="CASCADE")
     */
    private $gas;

    /**
     * @ORM\ManyToOne(targetEntity="AdminSistemaElectrico", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="sistemaElectrico", referencedColumnName="id", onDelete="CASCADE")
     */
    private $sistemaElectrico;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRecoleccionBasura", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="recoleccionBasura", referencedColumnName="id", onDelete="CASCADE")
     */
    private $recoleccionBasura;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTelefonia", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="telefonia", referencedColumnName="id", onDelete="CASCADE")
     */
    private $telefonia;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTransporte", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="transporte", referencedColumnName="id", onDelete="CASCADE")
     */
    private $transporte;

    /**
     * @ORM\ManyToOne(targetEntity="AdminMecanismoInformacion", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="mecanismoInformacion", referencedColumnName="id", onDelete="CASCADE")
     */
    private $mecanismoInformacion;

    /**
     * @ORM\ManyToOne(targetEntity="AdminServiciosComunales", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="serviciosComunales", referencedColumnName="id", onDelete="CASCADE")
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
