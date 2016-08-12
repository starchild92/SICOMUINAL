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
     * @ORM\ManyToOne(targetEntity="AdminTipoVivienda", cascade={"persist"})
     * @ORM\JoinColumn(name="tipoVivienda", referencedColumnName="id", onDelete="CASCADE")
     */
    private $tipo;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTenencia", cascade={"persist"})
     * @ORM\JoinColumn(name="tipoTenencia", referencedColumnName="id", onDelete="CASCADE")
     */
    private $tenencia;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="terrenoPropio", referencedColumnName="id", onDelete="CASCADE")
     */
    private $terrenoPropio;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="ovc", referencedColumnName="id", onDelete="CASCADE")
     */
    private $ovc;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoHabitacionesVivienda")
     * @ORM\JoinTable(name="sitVivi_tHV",
     *      joinColumns={@ORM\JoinColumn(name="sitViv", referencedColumnName="id", onDelete="cascade")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="tHabViv_id", referencedColumnName="id", onDelete="cascade")}
     *      )
     */
    private $habitaciones;

    /**
     * @var integer
     *
     * @ORM\Column(name="cantidadHabitaciones", type="integer")
     */
    private $cantidadHabitaciones;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoParedes", cascade={"persist"})
     * @ORM\JoinColumn(name="tipoParedes", referencedColumnName="id", onDelete="CASCADE")
     */
    private $paredes;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTecho", cascade={"persist"})
     * @ORM\JoinColumn(name="tipoTecho", referencedColumnName="id", onDelete="CASCADE")
     */
    private $techo;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoEnseres")
     * @ORM\JoinTable(name="sitVivi_enseres",
     *      joinColumns={@ORM\JoinColumn(name="sitViv", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="enseres_id", referencedColumnName="id")}
     *      )
     */
    private $enseres;

    /**
     * @ORM\ManyToOne(targetEntity="AdminSalubridadVivienda", cascade={"persist"})
     * @ORM\JoinColumn(name="salubridad", referencedColumnName="id", onDelete="CASCADE")
     */
    private $salubridad;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoPlagas")
     * @ORM\JoinTable(name="sitVivi_plaga",
     *      joinColumns={@ORM\JoinColumn(name="sitViv", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="plaga_id", referencedColumnName="id")}
     *      )
     */
    private $presenciaInsectos;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoMascotas")
     * @ORM\JoinTable(name="sitVivi_mascota",
     *      joinColumns={@ORM\JoinColumn(name="sitViv", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="masco_id", referencedColumnName="id")}
     *      )
     */
    private $mascota;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="leypoliticahabitacional", referencedColumnName="id", onDelete="CASCADE")
     */
    private $leypoliticahabitacional;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="sivih", referencedColumnName="id", onDelete="CASCADE")
     */
    private $sivih;

    /**
     * @ORM\OneToOne(targetEntity="Planillas", mappedBy="situacionVivienda")
     */
    private $planilla;
    
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->habitaciones = new \Doctrine\Common\Collections\ArrayCollection();
        $this->enseres = new \Doctrine\Common\Collections\ArrayCollection();
        $this->presenciaInsectos = new \Doctrine\Common\Collections\ArrayCollection();
        $this->mascota = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set terrenoPropio
     *
     * @param string $terrenoPropio
     * @return SituacionVivienda
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
     * Set ovc
     *
     * @param string $ovc
     * @return SituacionVivienda
     */
    public function setOvc($ovc)
    {
        $this->ovc = $ovc;

        return $this;
    }

    /**
     * Get ovc
     *
     * @return string 
     */
    public function getOvc()
    {
        return $this->ovc;
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
     * Add habitaciones
     *
     * @param \SICBundle\Entity\AdminTipoHabitacionesVivienda $habitaciones
     * @return SituacionVivienda
     */
    public function addHabitacione(\SICBundle\Entity\AdminTipoHabitacionesVivienda $habitaciones)
    {
        $this->habitaciones[] = $habitaciones;

        return $this;
    }

    /**
     * Remove habitaciones
     *
     * @param \SICBundle\Entity\AdminTipoHabitacionesVivienda $habitaciones
     */
    public function removeHabitacione(\SICBundle\Entity\AdminTipoHabitacionesVivienda $habitaciones)
    {
        $this->habitaciones->removeElement($habitaciones);
    }

    /**
     * Get habitaciones
     *
     * @return \Doctrine\Common\Collections\Collection 
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
     * Add enseres
     *
     * @param \SICBundle\Entity\AdminTipoEnseres $enseres
     * @return SituacionVivienda
     */
    public function addEnsere(\SICBundle\Entity\AdminTipoEnseres $enseres)
    {
        $this->enseres[] = $enseres;

        return $this;
    }

    /**
     * Remove enseres
     *
     * @param \SICBundle\Entity\AdminTipoEnseres $enseres
     */
    public function removeEnsere(\SICBundle\Entity\AdminTipoEnseres $enseres)
    {
        $this->enseres->removeElement($enseres);
    }

    /**
     * Get enseres
     *
     * @return \Doctrine\Common\Collections\Collection 
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
     * Add presenciaInsectos
     *
     * @param \SICBundle\Entity\AdminTipoPlagas $presenciaInsectos
     * @return SituacionVivienda
     */
    public function addPresenciaInsecto(\SICBundle\Entity\AdminTipoPlagas $presenciaInsectos)
    {
        $this->presenciaInsectos[] = $presenciaInsectos;

        return $this;
    }

    /**
     * Remove presenciaInsectos
     *
     * @param \SICBundle\Entity\AdminTipoPlagas $presenciaInsectos
     */
    public function removePresenciaInsecto(\SICBundle\Entity\AdminTipoPlagas $presenciaInsectos)
    {
        $this->presenciaInsectos->removeElement($presenciaInsectos);
    }

    /**
     * Get presenciaInsectos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getPresenciaInsectos()
    {
        return $this->presenciaInsectos;
    }

    /**
     * Add mascota
     *
     * @param \SICBundle\Entity\AdminTipoMascotas $mascota
     * @return SituacionVivienda
     */
    public function addMascotum(\SICBundle\Entity\AdminTipoMascotas $mascota)
    {
        $this->mascota[] = $mascota;

        return $this;
    }

    /**
     * Remove mascota
     *
     * @param \SICBundle\Entity\AdminTipoMascotas $mascota
     */
    public function removeMascotum(\SICBundle\Entity\AdminTipoMascotas $mascota)
    {
        $this->mascota->removeElement($mascota);
    }

    /**
     * Get mascota
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getMascota()
    {
        return $this->mascota;
    }

    /**
     * Set planilla
     *
     * @param \SICBundle\Entity\Planillas $planilla
     * @return SituacionVivienda
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
     * Set leypoliticahabitacional
     *
     * @param \SICBundle\Entity\AdminRespCerrada $leypoliticahabitacional
     * @return SituacionVivienda
     */
    public function setLeypoliticahabitacional(\SICBundle\Entity\AdminRespCerrada $leypoliticahabitacional = null)
    {
        $this->leypoliticahabitacional = $leypoliticahabitacional;

        return $this;
    }

    /**
     * Get leypoliticahabitacional
     *
     * @return \SICBundle\Entity\AdminRespCerrada 
     */
    public function getLeypoliticahabitacional()
    {
        return $this->leypoliticahabitacional;
    }

    /**
     * Set sivih
     *
     * @param \SICBundle\Entity\AdminRespCerrada $sivih
     * @return SituacionVivienda
     */
    public function setSivih(\SICBundle\Entity\AdminRespCerrada $sivih = null)
    {
        $this->sivih = $sivih;

        return $this;
    }

    /**
     * Get sivih
     *
     * @return \SICBundle\Entity\AdminRespCerrada 
     */
    public function getSivih()
    {
        return $this->sivih;
    }
}
