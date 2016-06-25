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
     * @ORM\ManyToOne(targetEntity="AdminTipoVivienda", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoVivienda", referencedColumnName="id", onDelete="CASCADE")
     */
    private $tipo;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTenencia", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoTenencia", referencedColumnName="id", onDelete="CASCADE")
     */
    private $tenencia;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="respCerrada_1", referencedColumnName="id", onDelete="CASCADE")
     */
    private $terrenoPropio;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="respCerrada_2", referencedColumnName="id", onDelete="CASCADE")
     */
    private $ovc;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoHabitacionesVivienda", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoHabViv", referencedColumnName="id", onDelete="CASCADE")
     */
    private $habitaciones;

    /**
     * @var integer
     *
     * @ORM\Column(name="cantidadHabitaciones", type="integer")
     */
    private $cantidadHabitaciones;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoParedes", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoParedes", referencedColumnName="id", onDelete="CASCADE")
     */
    private $paredes;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTecho", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoTecho", referencedColumnName="id", onDelete="CASCADE")
     */
    private $techo;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoEnseres", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoEnceres", referencedColumnName="id", onDelete="CASCADE")
     */
    private $enseres;

    /**
     * @ORM\ManyToOne(targetEntity="AdminSalubridadVivienda", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="salubridad", referencedColumnName="id", onDelete="CASCADE")
     */
    private $salubridad;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoPlagas", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoPlagas", referencedColumnName="id", onDelete="CASCADE")
     */
    private $presenciaInsectos;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoMascotas", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="tipoMasco", referencedColumnName="id", onDelete="CASCADE")
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
     * Set cantidadHabitaciones
     *
     * @param integer $cantidadHabitaciones
     * @return SituacionVivienda
     */
    public function setCantidadHabitaciones($cantidadHabitaciones)
    {
        $this->cantidadHabitaciones = $cantidadHabitaciones;

        return $this;
    }

    /**
     * Get cantidadHabitaciones
     *
     * @return integer 
     */
    public function getCantidadHabitaciones()
    {
        return $this->cantidadHabitaciones;
    }

    /**
     * Set tipo
     *
     * @param \SICBundle\Entity\AdminTipoVivienda $tipo
     * @return SituacionVivienda
     */
    public function setTipo(\SICBundle\Entity\AdminTipoVivienda $tipo = null)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return \SICBundle\Entity\AdminTipoVivienda 
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set tenencia
     *
     * @param \SICBundle\Entity\AdminTipoTenencia $tenencia
     * @return SituacionVivienda
     */
    public function setTenencia(\SICBundle\Entity\AdminTipoTenencia $tenencia = null)
    {
        $this->tenencia = $tenencia;

        return $this;
    }

    /**
     * Get tenencia
     *
     * @return \SICBundle\Entity\AdminTipoTenencia 
     */
    public function getTenencia()
    {
        return $this->tenencia;
    }

    /**
     * Set terrenoPropio
     *
     * @param \SICBundle\Entity\AdminRespCerrada $terrenoPropio
     * @return SituacionVivienda
     */
    public function setTerrenoPropio(\SICBundle\Entity\AdminRespCerrada $terrenoPropio = null)
    {
        $this->terrenoPropio = $terrenoPropio;

        return $this;
    }

    /**
     * Get terrenoPropio
     *
     * @return \SICBundle\Entity\AdminRespCerrada 
     */
    public function getTerrenoPropio()
    {
        return $this->terrenoPropio;
    }

    /**
     * Set habitaciones
     *
     * @param \SICBundle\Entity\AdminTipoHabitacionesVivienda $habitaciones
     * @return SituacionVivienda
     */
    public function setHabitaciones(\SICBundle\Entity\AdminTipoHabitacionesVivienda $habitaciones = null)
    {
        $this->habitaciones = $habitaciones;

        return $this;
    }

    /**
     * Get habitaciones
     *
     * @return \SICBundle\Entity\AdminTipoHabitacionesVivienda 
     */
    public function getHabitaciones()
    {
        return $this->habitaciones;
    }

    /**
     * Set paredes
     *
     * @param \SICBundle\Entity\AdminTipoParedes $paredes
     * @return SituacionVivienda
     */
    public function setParedes(\SICBundle\Entity\AdminTipoParedes $paredes = null)
    {
        $this->paredes = $paredes;

        return $this;
    }

    /**
     * Get paredes
     *
     * @return \SICBundle\Entity\AdminTipoParedes 
     */
    public function getParedes()
    {
        return $this->paredes;
    }

    /**
     * Set techo
     *
     * @param \SICBundle\Entity\AdminTipoTecho $techo
     * @return SituacionVivienda
     */
    public function setTecho(\SICBundle\Entity\AdminTipoTecho $techo = null)
    {
        $this->techo = $techo;

        return $this;
    }

    /**
     * Get techo
     *
     * @return \SICBundle\Entity\AdminTipoTecho 
     */
    public function getTecho()
    {
        return $this->techo;
    }

    /**
     * Set enseres
     *
     * @param \SICBundle\Entity\AdminTipoEnseres $enseres
     * @return SituacionVivienda
     */
    public function setEnseres(\SICBundle\Entity\AdminTipoEnseres $enseres = null)
    {
        $this->enseres = $enseres;

        return $this;
    }

    /**
     * Get enseres
     *
     * @return \SICBundle\Entity\AdminTipoEnseres 
     */
    public function getEnseres()
    {
        return $this->enseres;
    }

    /**
     * Set salubridad
     *
     * @param \SICBundle\Entity\AdminSalubridadVivienda $salubridad
     * @return SituacionVivienda
     */
    public function setSalubridad(\SICBundle\Entity\AdminSalubridadVivienda $salubridad = null)
    {
        $this->salubridad = $salubridad;

        return $this;
    }

    /**
     * Get salubridad
     *
     * @return \SICBundle\Entity\AdminSalubridadVivienda 
     */
    public function getSalubridad()
    {
        return $this->salubridad;
    }

    /**
     * Set presenciaInsectos
     *
     * @param \SICBundle\Entity\AdminTipoPlagas $presenciaInsectos
     * @return SituacionVivienda
     */
    public function setPresenciaInsectos(\SICBundle\Entity\AdminTipoPlagas $presenciaInsectos = null)
    {
        $this->presenciaInsectos = $presenciaInsectos;

        return $this;
    }

    /**
     * Get presenciaInsectos
     *
     * @return \SICBundle\Entity\AdminTipoPlagas 
     */
    public function getPresenciaInsectos()
    {
        return $this->presenciaInsectos;
    }

    /**
     * Set mascota
     *
     * @param \SICBundle\Entity\AdminTipoMascotas $mascota
     * @return SituacionVivienda
     */
    public function setMascota(\SICBundle\Entity\AdminTipoMascotas $mascota = null)
    {
        $this->mascota = $mascota;

        return $this;
    }

    /**
     * Get mascota
     *
     * @return \SICBundle\Entity\AdminTipoMascotas 
     */
    public function getMascota()
    {
        return $this->mascota;
    }

    /**
     * Set ovc
     *
     * @param \SICBundle\Entity\AdminRespCerrada $ovc
     * @return SituacionVivienda
     */
    public function setOvc(\SICBundle\Entity\AdminRespCerrada $ovc = null)
    {
        $this->ovc = $ovc;

        return $this;
    }

    /**
     * Get ovc
     *
     * @return \SICBundle\Entity\AdminRespCerrada 
     */
    public function getOvc()
    {
        return $this->ovc;
    }
}
