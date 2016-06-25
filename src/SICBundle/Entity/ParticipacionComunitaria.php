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
     * @ORM\ManyToOne(targetEntity="AdminOrgComunitaria", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="existenOrganizaciones", referencedColumnName="id", onDelete="CASCADE")
     */
    private $existenOrganizaciones;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="respCerrada_1", referencedColumnName="id", onDelete="CASCADE")
     */
    private $participaOrganizacion;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="respCerrada_2", referencedColumnName="id", onDelete="CASCADE")
     */
    private $participaMiembroOrganizacion;

    /**
     * @ORM\ManyToOne(targetEntity="AdminMisionesComunidad", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="misionesComunidad", referencedColumnName="id", onDelete="CASCADE")
     */
    private $misionesComunidad;

    /**
     * @ORM\ManyToOne(targetEntity="AdminPreguntasParticipacionComunitaria", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="preguntasParticipacionComunitaria", referencedColumnName="id", onDelete="CASCADE")
     */
    private $preguntasParticipacionComunitaria;

    /**
     * @ORM\ManyToOne(targetEntity="AdminAreaTrabajoCC", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="areaTabajoCC", referencedColumnName="id", onDelete="CASCADE")
     */
    private $areaTabajoCC;


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
     * Set existenOrganizaciones
     *
     * @param \SICBundle\Entity\AdminOrgComunitaria $existenOrganizaciones
     * @return ParticipacionComunitaria
     */
    public function setExistenOrganizaciones(\SICBundle\Entity\AdminOrgComunitaria $existenOrganizaciones = null)
    {
        $this->existenOrganizaciones = $existenOrganizaciones;

        return $this;
    }

    /**
     * Get existenOrganizaciones
     *
     * @return \SICBundle\Entity\AdminOrgComunitaria 
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
     * Set misionesComunidad
     *
     * @param \SICBundle\Entity\AdminMisionesComunidad $misionesComunidad
     * @return ParticipacionComunitaria
     */
    public function setMisionesComunidad(\SICBundle\Entity\AdminMisionesComunidad $misionesComunidad = null)
    {
        $this->misionesComunidad = $misionesComunidad;

        return $this;
    }

    /**
     * Get misionesComunidad
     *
     * @return \SICBundle\Entity\AdminMisionesComunidad 
     */
    public function getMisionesComunidad()
    {
        return $this->misionesComunidad;
    }

    /**
     * Set preguntasParticipacionComunitaria
     *
     * @param \SICBundle\Entity\AdminPreguntasParticipacionComunitaria $preguntasParticipacionComunitaria
     * @return ParticipacionComunitaria
     */
    public function setPreguntasParticipacionComunitaria(\SICBundle\Entity\AdminPreguntasParticipacionComunitaria $preguntasParticipacionComunitaria = null)
    {
        $this->preguntasParticipacionComunitaria = $preguntasParticipacionComunitaria;

        return $this;
    }

    /**
     * Get preguntasParticipacionComunitaria
     *
     * @return \SICBundle\Entity\AdminPreguntasParticipacionComunitaria 
     */
    public function getPreguntasParticipacionComunitaria()
    {
        return $this->preguntasParticipacionComunitaria;
    }

    /**
     * Set areaTabajoCC
     *
     * @param \SICBundle\Entity\AdminAreaTrabajoCC $areaTabajoCC
     * @return ParticipacionComunitaria
     */
    public function setAreaTabajoCC(\SICBundle\Entity\AdminAreaTrabajoCC $areaTabajoCC = null)
    {
        $this->areaTabajoCC = $areaTabajoCC;

        return $this;
    }

    /**
     * Get areaTabajoCC
     *
     * @return \SICBundle\Entity\AdminAreaTrabajoCC 
     */
    public function getAreaTabajoCC()
    {
        return $this->areaTabajoCC;
    }
}
