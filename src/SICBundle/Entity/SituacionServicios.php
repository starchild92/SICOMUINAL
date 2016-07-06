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
     * @ORM\ManyToOne(targetEntity="AdminAguasBlancas", cascade={"persist"})
     * @ORM\JoinColumn(name="aguasBlancas", referencedColumnName="id", onDelete="CASCADE")
     */
    private $aguasBlancas;

    /**
     * @ORM\ManyToOne(targetEntity="AdminAguasServidas", cascade={"persist"})
     * @ORM\JoinColumn(name="aguasServidas", referencedColumnName="id", onDelete="CASCADE")
     */
    private $aguasServidas;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoGas", cascade={"persist"})
     * @ORM\JoinColumn(name="gas", referencedColumnName="id", onDelete="CASCADE")
     */
    private $gas;

    /**
     * @ORM\ManyToOne(targetEntity="AdminSistemaElectrico", cascade={"persist"})
     * @ORM\JoinColumn(name="sistemaElectrico", referencedColumnName="id", onDelete="CASCADE")
     */
    private $sistemaElectrico;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRecoleccionBasura", cascade={"persist"})
     * @ORM\JoinColumn(name="recoleccionBasura", referencedColumnName="id", onDelete="CASCADE")
     */
    private $recoleccionBasura;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTelefonia", cascade={"persist"})
     * @ORM\JoinColumn(name="telefonia", referencedColumnName="id", onDelete="CASCADE")
     */
    private $telefonia;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoTransporte", cascade={"persist"})
     * @ORM\JoinTable(name="sitServ_tipTrans",
     *      joinColumns={@ORM\JoinColumn(name="sitServ_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="tipTrans_id", referencedColumnName="id")}
     *      )
     */
    private $transporte;

    /**
     * @ORM\ManyToMany(targetEntity="AdminMecanismoInformacion", cascade={"persist"})
     * @ORM\JoinTable(name="sitServ_mecInf",
     *      joinColumns={@ORM\JoinColumn(name="sitServ_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="mecInf_id", referencedColumnName="id")}
     *      )
     */
    private $mecanismoInformacion;

    /**
     * @ORM\ManyToMany(targetEntity="AdminServiciosComunales", cascade={"persist"})
     * @ORM\JoinTable(name="sitServ_servCom",
     *      joinColumns={@ORM\JoinColumn(name="sitServ_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="servCom_id", referencedColumnName="id")}
     *      )
     */
    private $serviciosComunales;

    /**
     * @ORM\OneToOne(targetEntity="Planillas", inversedBy="situacionServicios")
     */
    private $planilla;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->transporte = new \Doctrine\Common\Collections\ArrayCollection();
        $this->mecanismoInformacion = new \Doctrine\Common\Collections\ArrayCollection();
        $this->serviciosComunales = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set aguasBlancas
     *
     * @param \SICBundle\Entity\AdminAguasBlancas $aguasBlancas
     * @return SituacionServicios
     */
    public function setAguasBlancas(\SICBundle\Entity\AdminAguasBlancas $aguasBlancas = null)
    {
        $this->aguasBlancas = $aguasBlancas;

        return $this;
    }

    /**
     * Get aguasBlancas
     *
     * @return \SICBundle\Entity\AdminAguasBlancas 
     */
    public function getAguasBlancas()
    {
        return $this->aguasBlancas;
    }

    /**
     * Set aguasServidas
     *
     * @param \SICBundle\Entity\AdminAguasServidas $aguasServidas
     * @return SituacionServicios
     */
    public function setAguasServidas(\SICBundle\Entity\AdminAguasServidas $aguasServidas = null)
    {
        $this->aguasServidas = $aguasServidas;

        return $this;
    }

    /**
     * Get aguasServidas
     *
     * @return \SICBundle\Entity\AdminAguasServidas 
     */
    public function getAguasServidas()
    {
        return $this->aguasServidas;
    }

    /**
     * Set gas
     *
     * @param \SICBundle\Entity\AdminTipoGas $gas
     * @return SituacionServicios
     */
    public function setGas(\SICBundle\Entity\AdminTipoGas $gas = null)
    {
        $this->gas = $gas;

        return $this;
    }

    /**
     * Get gas
     *
     * @return \SICBundle\Entity\AdminTipoGas 
     */
    public function getGas()
    {
        return $this->gas;
    }

    /**
     * Set sistemaElectrico
     *
     * @param \SICBundle\Entity\AdminSistemaElectrico $sistemaElectrico
     * @return SituacionServicios
     */
    public function setSistemaElectrico(\SICBundle\Entity\AdminSistemaElectrico $sistemaElectrico = null)
    {
        $this->sistemaElectrico = $sistemaElectrico;

        return $this;
    }

    /**
     * Get sistemaElectrico
     *
     * @return \SICBundle\Entity\AdminSistemaElectrico 
     */
    public function getSistemaElectrico()
    {
        return $this->sistemaElectrico;
    }

    /**
     * Set recoleccionBasura
     *
     * @param \SICBundle\Entity\AdminRecoleccionBasura $recoleccionBasura
     * @return SituacionServicios
     */
    public function setRecoleccionBasura(\SICBundle\Entity\AdminRecoleccionBasura $recoleccionBasura = null)
    {
        $this->recoleccionBasura = $recoleccionBasura;

        return $this;
    }

    /**
     * Get recoleccionBasura
     *
     * @return \SICBundle\Entity\AdminRecoleccionBasura 
     */
    public function getRecoleccionBasura()
    {
        return $this->recoleccionBasura;
    }

    /**
     * Set telefonia
     *
     * @param \SICBundle\Entity\AdminTipoTelefonia $telefonia
     * @return SituacionServicios
     */
    public function setTelefonia(\SICBundle\Entity\AdminTipoTelefonia $telefonia = null)
    {
        $this->telefonia = $telefonia;

        return $this;
    }

    /**
     * Get telefonia
     *
     * @return \SICBundle\Entity\AdminTipoTelefonia 
     */
    public function getTelefonia()
    {
        return $this->telefonia;
    }

    /**
     * Add transporte
     *
     * @param \SICBundle\Entity\AdminTipoTransporte $transporte
     * @return SituacionServicios
     */
    public function addTransporte(\SICBundle\Entity\AdminTipoTransporte $transporte)
    {
        $this->transporte[] = $transporte;

        return $this;
    }

    /**
     * Remove transporte
     *
     * @param \SICBundle\Entity\AdminTipoTransporte $transporte
     */
    public function removeTransporte(\SICBundle\Entity\AdminTipoTransporte $transporte)
    {
        $this->transporte->removeElement($transporte);
    }

    /**
     * Get transporte
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getTransporte()
    {
        return $this->transporte;
    }

    /**
     * Add mecanismoInformacion
     *
     * @param \SICBundle\Entity\AdminMecanismoInformacion $mecanismoInformacion
     * @return SituacionServicios
     */
    public function addMecanismoInformacion(\SICBundle\Entity\AdminMecanismoInformacion $mecanismoInformacion)
    {
        $this->mecanismoInformacion[] = $mecanismoInformacion;

        return $this;
    }

    /**
     * Remove mecanismoInformacion
     *
     * @param \SICBundle\Entity\AdminMecanismoInformacion $mecanismoInformacion
     */
    public function removeMecanismoInformacion(\SICBundle\Entity\AdminMecanismoInformacion $mecanismoInformacion)
    {
        $this->mecanismoInformacion->removeElement($mecanismoInformacion);
    }

    /**
     * Get mecanismoInformacion
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getMecanismoInformacion()
    {
        return $this->mecanismoInformacion;
    }

    /**
     * Add serviciosComunales
     *
     * @param \SICBundle\Entity\AdminServiciosComunales $serviciosComunales
     * @return SituacionServicios
     */
    public function addServiciosComunale(\SICBundle\Entity\AdminServiciosComunales $serviciosComunales)
    {
        $this->serviciosComunales[] = $serviciosComunales;

        return $this;
    }

    /**
     * Remove serviciosComunales
     *
     * @param \SICBundle\Entity\AdminServiciosComunales $serviciosComunales
     */
    public function removeServiciosComunale(\SICBundle\Entity\AdminServiciosComunales $serviciosComunales)
    {
        $this->serviciosComunales->removeElement($serviciosComunales);
    }

    /**
     * Get serviciosComunales
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getServiciosComunales()
    {
        return $this->serviciosComunales;
    }
}
