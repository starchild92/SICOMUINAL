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
     * @var string
     *
     * @ORM\Column(name="existenOrganizaciones", type="string", length=255)
     */
    private $existenOrganizaciones;

    /**
     * @var string
     *
     * @ORM\Column(name="participaOrganizacion", type="string", length=255)
     */
    private $participaOrganizacion;

    /**
     * @var string
     *
     * @ORM\Column(name="participaMiembroOrganizacion", type="string", length=255)
     */
    private $participaMiembroOrganizacion;

    /**
     * @var string
     *
     * @ORM\Column(name="misionesComunidad", type="string", length=255)
     */
    private $misionesComunidad;

    /**
     * @var string
     *
     * @ORM\Column(name="preguntasParticipacionComunitaria", type="string", length=255)
     */
    private $preguntasParticipacionComunitaria;


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
     * @param string $existenOrganizaciones
     * @return ParticipacionComunitaria
     */
    public function setExistenOrganizaciones($existenOrganizaciones)
    {
        $this->existenOrganizaciones = $existenOrganizaciones;

        return $this;
    }

    /**
     * Get existenOrganizaciones
     *
     * @return string 
     */
    public function getExistenOrganizaciones()
    {
        return $this->existenOrganizaciones;
    }

    /**
     * Set participaOrganizacion
     *
     * @param string $participaOrganizacion
     * @return ParticipacionComunitaria
     */
    public function setParticipaOrganizacion($participaOrganizacion)
    {
        $this->participaOrganizacion = $participaOrganizacion;

        return $this;
    }

    /**
     * Get participaOrganizacion
     *
     * @return string 
     */
    public function getParticipaOrganizacion()
    {
        return $this->participaOrganizacion;
    }

    /**
     * Set participaMiembroOrganizacion
     *
     * @param string $participaMiembroOrganizacion
     * @return ParticipacionComunitaria
     */
    public function setParticipaMiembroOrganizacion($participaMiembroOrganizacion)
    {
        $this->participaMiembroOrganizacion = $participaMiembroOrganizacion;

        return $this;
    }

    /**
     * Get participaMiembroOrganizacion
     *
     * @return string 
     */
    public function getParticipaMiembroOrganizacion()
    {
        return $this->participaMiembroOrganizacion;
    }

    /**
     * Set misionesComunidad
     *
     * @param string $misionesComunidad
     * @return ParticipacionComunitaria
     */
    public function setMisionesComunidad($misionesComunidad)
    {
        $this->misionesComunidad = $misionesComunidad;

        return $this;
    }

    /**
     * Get misionesComunidad
     *
     * @return string 
     */
    public function getMisionesComunidad()
    {
        return $this->misionesComunidad;
    }

    /**
     * Set preguntasParticipacionComunitaria
     *
     * @param string $preguntasParticipacionComunitaria
     * @return ParticipacionComunitaria
     */
    public function setPreguntasParticipacionComunitaria($preguntasParticipacionComunitaria)
    {
        $this->preguntasParticipacionComunitaria = $preguntasParticipacionComunitaria;

        return $this;
    }

    /**
     * Get preguntasParticipacionComunitaria
     *
     * @return string 
     */
    public function getPreguntasParticipacionComunitaria()
    {
        return $this->preguntasParticipacionComunitaria;
    }
}
