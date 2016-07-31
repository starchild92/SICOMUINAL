<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ParticipacionComunitaria
 *
 * @ORM\Table(name="participacion_comunitaria")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\ParticipacionComunitariaRepository")
 */
class ParticipacionComunitaria
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
     * @ORM\ManyToMany(targetEntity="AdminOrgComunitaria")
     * @ORM\JoinTable(name="partCom_orgs",
     *      joinColumns={@ORM\JoinColumn(name="partCom_id", referencedColumnName="id", onDelete="cascade")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="orgs_id", referencedColumnName="id", onDelete="cascade")}
     *      )
     */
    private $existenOrganizaciones;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="participaOrganizacion", referencedColumnName="id", onDelete="CASCADE")
     */
    private $participaOrganizacion;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="participaMiembroOrganizacion", referencedColumnName="id", onDelete="CASCADE")
     */
    private $participaMiembroOrganizacion;

    /**
     * @ORM\ManyToMany(targetEntity="AdminMisionesComunidad")
     * @ORM\JoinTable(name="partCom_Misiones",
     *      joinColumns={@ORM\JoinColumn(name="partCom_id", referencedColumnName="id", onDelete="cascade")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="mision_id", referencedColumnName="id", onDelete="cascade")}
     *      )
     */
    private $misionesComunidad;

    /**
     * @ORM\ManyToMany(targetEntity="AdminPreguntasParticipacionComunitaria", orphanRemoval=true)
     * @ORM\JoinTable(name="partCom_pregPart",
     *      joinColumns={@ORM\JoinColumn(name="partCom_id", referencedColumnName="id", onDelete="cascade")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="pregPart_id", referencedColumnName="id", onDelete="cascade")}
     *      )
     */
    private $preguntasParticipacionComunitaria;

    /**
     * @ORM\ManyToMany(targetEntity="AdminAreaTrabajoCC")
     * @ORM\JoinTable(name="partCom_areaTrabajo",
     *      joinColumns={@ORM\JoinColumn(name="partCom_id", referencedColumnName="id", onDelete="cascade")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="areacc_id", referencedColumnName="id", onDelete="cascade")}
     *      )
     */
    private $areaTabajoCC;
    
    /**
     * @ORM\OneToOne(targetEntity="Planillas", mappedBy="participacionComunitaria")
     */
    private $planilla;
    
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->existenOrganizaciones = new \Doctrine\Common\Collections\ArrayCollection();
        $this->misionesComunidad = new \Doctrine\Common\Collections\ArrayCollection();
        $this->preguntasParticipacionComunitaria = new \Doctrine\Common\Collections\ArrayCollection();
        $this->areaTabajoCC = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Add existenOrganizaciones
     *
     * @param \SICBundle\Entity\AdminOrgComunitaria $existenOrganizaciones
     * @return ParticipacionComunitaria
     */
    public function addExistenOrganizacione(\SICBundle\Entity\AdminOrgComunitaria $existenOrganizaciones)
    {
        $this->existenOrganizaciones[] = $existenOrganizaciones;

        return $this;
    }

    /**
     * Remove existenOrganizaciones
     *
     * @param \SICBundle\Entity\AdminOrgComunitaria $existenOrganizaciones
     */
    public function removeExistenOrganizacione(\SICBundle\Entity\AdminOrgComunitaria $existenOrganizaciones)
    {
        $this->existenOrganizaciones->removeElement($existenOrganizaciones);
    }

    /**
     * Get existenOrganizaciones
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getExistenOrganizaciones()
    {
        return $this->existenOrganizaciones;
    }

    /**
     * Set participaOrganizacion
     *
     * @param \SICBundle\Entity\AdminRespCerrada $participaOrganizacion
     * @return ParticipacionComunitaria
     */
    public function setParticipaOrganizacion(\SICBundle\Entity\AdminRespCerrada $participaOrganizacion = null)
    {
        $this->participaOrganizacion = $participaOrganizacion;

        return $this;
    }

    /**
     * Get participaOrganizacion
     *
     * @return \SICBundle\Entity\AdminRespCerrada 
     */
    public function getParticipaOrganizacion()
    {
        return $this->participaOrganizacion;
    }

    /**
     * Set participaMiembroOrganizacion
     *
     * @param \SICBundle\Entity\AdminRespCerrada $participaMiembroOrganizacion
     * @return ParticipacionComunitaria
     */
    public function setParticipaMiembroOrganizacion(\SICBundle\Entity\AdminRespCerrada $participaMiembroOrganizacion = null)
    {
        $this->participaMiembroOrganizacion = $participaMiembroOrganizacion;

        return $this;
    }

    /**
     * Get participaMiembroOrganizacion
     *
     * @return \SICBundle\Entity\AdminRespCerrada 
     */
    public function getParticipaMiembroOrganizacion()
    {
        return $this->participaMiembroOrganizacion;
    }

    /**
     * Add misionesComunidad
     *
     * @param \SICBundle\Entity\AdminMisionesComunidad $misionesComunidad
     * @return ParticipacionComunitaria
     */
    public function addMisionesComunidad(\SICBundle\Entity\AdminMisionesComunidad $misionesComunidad)
    {
        $this->misionesComunidad[] = $misionesComunidad;

        return $this;
    }

    /**
     * Remove misionesComunidad
     *
     * @param \SICBundle\Entity\AdminMisionesComunidad $misionesComunidad
     */
    public function removeMisionesComunidad(\SICBundle\Entity\AdminMisionesComunidad $misionesComunidad)
    {
        $this->misionesComunidad->removeElement($misionesComunidad);
    }

    /**
     * Get misionesComunidad
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getMisionesComunidad()
    {
        return $this->misionesComunidad;
    }

    /**
     * Add preguntasParticipacionComunitaria
     *
     * @param \SICBundle\Entity\AdminPreguntasParticipacionComunitaria $preguntasParticipacionComunitaria
     * @return ParticipacionComunitaria
     */
    public function addPreguntasParticipacionComunitarium(\SICBundle\Entity\AdminPreguntasParticipacionComunitaria $preguntasParticipacionComunitaria)
    {
        $this->preguntasParticipacionComunitaria[] = $preguntasParticipacionComunitaria;

        return $this;
    }

    /**
     * Remove preguntasParticipacionComunitaria
     *
     * @param \SICBundle\Entity\AdminPreguntasParticipacionComunitaria $preguntasParticipacionComunitaria
     */
    public function removePreguntasParticipacionComunitarium(\SICBundle\Entity\AdminPreguntasParticipacionComunitaria $preguntasParticipacionComunitaria)
    {
        $this->preguntasParticipacionComunitaria->removeElement($preguntasParticipacionComunitaria);
    }

    /**
     * Get preguntasParticipacionComunitaria
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getPreguntasParticipacionComunitaria()
    {
        return $this->preguntasParticipacionComunitaria;
    }

    /**
     * Add areaTabajoCC
     *
     * @param \SICBundle\Entity\AdminAreaTrabajoCC $areaTabajoCC
     * @return ParticipacionComunitaria
     */
    public function addAreaTabajoCC(\SICBundle\Entity\AdminAreaTrabajoCC $areaTabajoCC)
    {
        $this->areaTabajoCC[] = $areaTabajoCC;

        return $this;
    }

    /**
     * Remove areaTabajoCC
     *
     * @param \SICBundle\Entity\AdminAreaTrabajoCC $areaTabajoCC
     */
    public function removeAreaTabajoCC(\SICBundle\Entity\AdminAreaTrabajoCC $areaTabajoCC)
    {
        $this->areaTabajoCC->removeElement($areaTabajoCC);
    }

    /**
     * Get areaTabajoCC
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getAreaTabajoCC()
    {
        return $this->areaTabajoCC;
    }

    /**
     * Set planilla
     *
     * @param \SICBundle\Entity\Planillas $planilla
     * @return ParticipacionComunitaria
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
}
