<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Vivienda
 *
 * @ORM\Table(name="situacion_vivienda")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\SituacionViviendaRepository")
 */
class SituacionVivienda
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
     * @ORM\Column(name="tipo", type="string", length=255)
     */
    private $tipo;

    /**
     * @var string
     *
     * @ORM\Column(name="tenencia", type="string", length=255)
     */
    private $tenencia;

    /**
     * @var string
     *
     * @ORM\Column(name="terrenoPropio", type="string", length=255)
     */
    private $terrenoPropio;

    /**
     * @var string
     *
     * @ORM\Column(name="habitaciones", type="string", length=255)
     */
    private $habitaciones;

    /**
     * @var string
     *
     * @ORM\Column(name="cantidadHabitaciones", type="string", length=255)
     */
    private $cantidadHabitaciones;

    /**
     * @var string
     *
     * @ORM\Column(name="paredes", type="string", length=255)
     */
    private $paredes;

    /**
     * @var string
     *
     * @ORM\Column(name="techo", type="string", length=255)
     */
    private $techo;

    /**
     * @var string
     *
     * @ORM\Column(name="enseres", type="string", length=255)
     */
    private $enseres;

    /**
     * @var string
     *
     * @ORM\Column(name="salubridad", type="string", length=255)
     */
    private $salubridad;

    /**
     * @var string
     *
     * @ORM\Column(name="presenciaInsectos", type="string", length=255)
     */
    private $presenciaInsectos;

    /**
     * @var string
     *
     * @ORM\Column(name="mascota", type="string", length=255)
     */
    private $mascota;


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
     * Set tipo
     *
     * @param string $tipo
     * @return Vivienda
     */
    public function setTipo($tipo)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return string 
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set tenencia
     *
     * @param string $tenencia
     * @return Vivienda
     */
    public function setTenencia($tenencia)
    {
        $this->tenencia = $tenencia;

        return $this;
    }

    /**
     * Get tenencia
     *
     * @return string 
     */
    public function getTenencia()
    {
        return $this->tenencia;
    }

    /**
     * Set terrenoPropio
     *
     * @param string $terrenoPropio
     * @return Vivienda
     */
    public function setTerrenoPropio($terrenoPropio)
    {
        $this->terrenoPropio = $terrenoPropio;

        return $this;
    }

    /**
     * Get terrenoPropio
     *
     * @return string 
     */
    public function getTerrenoPropio()
    {
        return $this->terrenoPropio;
    }

    /**
     * Set habitaciones
     *
     * @param string $habitaciones
     * @return Vivienda
     */
    public function setHabitaciones($habitaciones)
    {
        $this->habitaciones = $habitaciones;

        return $this;
    }

    /**
     * Get habitaciones
     *
     * @return string 
     */
    public function getHabitaciones()
    {
        return $this->habitaciones;
    }

    /**
     * Set cantidadHabitaciones
     *
     * @param string $cantidadHabitaciones
     * @return Vivienda
     */
    public function setCantidadHabitaciones($cantidadHabitaciones)
    {
        $this->cantidadHabitaciones = $cantidadHabitaciones;

        return $this;
    }

    /**
     * Get cantidadHabitaciones
     *
     * @return string 
     */
    public function getCantidadHabitaciones()
    {
        return $this->cantidadHabitaciones;
    }

    /**
     * Set paredes
     *
     * @param string $paredes
     * @return Vivienda
     */
    public function setParedes($paredes)
    {
        $this->paredes = $paredes;

        return $this;
    }

    /**
     * Get paredes
     *
     * @return string 
     */
    public function getParedes()
    {
        return $this->paredes;
    }

    /**
     * Set techo
     *
     * @param string $techo
     * @return Vivienda
     */
    public function setTecho($techo)
    {
        $this->techo = $techo;

        return $this;
    }

    /**
     * Get techo
     *
     * @return string 
     */
    public function getTecho()
    {
        return $this->techo;
    }

    /**
     * Set enseres
     *
     * @param string $enseres
     * @return Vivienda
     */
    public function setEnseres($enseres)
    {
        $this->enseres = $enseres;

        return $this;
    }

    /**
     * Get enseres
     *
     * @return string 
     */
    public function getEnseres()
    {
        return $this->enseres;
    }

    /**
     * Set salubridad
     *
     * @param string $salubridad
     * @return Vivienda
     */
    public function setSalubridad($salubridad)
    {
        $this->salubridad = $salubridad;

        return $this;
    }

    /**
     * Get salubridad
     *
     * @return string 
     */
    public function getSalubridad()
    {
        return $this->salubridad;
    }

    /**
     * Set presenciaInsectos
     *
     * @param string $presenciaInsectos
     * @return Vivienda
     */
    public function setPresenciaInsectos($presenciaInsectos)
    {
        $this->presenciaInsectos = $presenciaInsectos;

        return $this;
    }

    /**
     * Get presenciaInsectos
     *
     * @return string 
     */
    public function getPresenciaInsectos()
    {
        return $this->presenciaInsectos;
    }

    /**
     * Set mascota
     *
     * @param string $mascota
     * @return Vivienda
     */
    public function setMascota($mascota)
    {
        $this->mascota = $mascota;

        return $this;
    }

    /**
     * Get mascota
     *
     * @return string 
     */
    public function getMascota()
    {
        return $this->mascota;
    }
}
