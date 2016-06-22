<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * GrupoFamiliar
 *
 * @ORM\Table(name="grupo_familiar")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\GrupoFamiliarRepository")
 */
class GrupoFamiliar
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
     * @ORM\Column(name="apellidos", type="string", length=255)
     */
    private $apellidos;

    /**
     * @var string
     *
     * @ORM\Column(name="direccion", type="string", length=255)
     */
    private $direccion;

    /**
     * @var int
     *
     * @ORM\Column(name="cantidadMiembros", type="integer")
     */
    private $cantidadMiembros;

    /**
     * @var string
     *
     * @ORM\Column(name="vivienda", type="string", length=255)
     */
    private $vivienda;

    /**
     * @var int
     *
     * @ORM\Column(name="numeroCasa", type="integer")
     */
    private $numeroCasa;

    /**
     * @var string
     *
     * @ORM\Column(name="sector", type="string", length=255)
     */
    private $sector;

    /**
     * @var int
     *
     * @ORM\Column(name="tiempoResidencia", type="integer")
     */
    private $tiempoResidencia;


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
     * Set apellidos
     *
     * @param string $apellidos
     * @return GrupoFamiliar
     */
    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;

        return $this;
    }

    /**
     * Get apellidos
     *
     * @return string 
     */
    public function getApellidos()
    {
        return $this->apellidos;
    }

    /**
     * Set direccion
     *
     * @param string $direccion
     * @return GrupoFamiliar
     */
    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;

        return $this;
    }

    /**
     * Get direccion
     *
     * @return string 
     */
    public function getDireccion()
    {
        return $this->direccion;
    }

    /**
     * Set cantidadMiembros
     *
     * @param integer $cantidadMiembros
     * @return GrupoFamiliar
     */
    public function setCantidadMiembros($cantidadMiembros)
    {
        $this->cantidadMiembros = $cantidadMiembros;

        return $this;
    }

    /**
     * Get cantidadMiembros
     *
     * @return integer 
     */
    public function getCantidadMiembros()
    {
        return $this->cantidadMiembros;
    }

    /**
     * Set vivienda
     *
     * @param string $vivienda
     * @return GrupoFamiliar
     */
    public function setVivienda($vivienda)
    {
        $this->vivienda = $vivienda;

        return $this;
    }

    /**
     * Get vivienda
     *
     * @return string 
     */
    public function getVivienda()
    {
        return $this->vivienda;
    }

    /**
     * Set numeroCasa
     *
     * @param integer $numeroCasa
     * @return GrupoFamiliar
     */
    public function setNumeroCasa($numeroCasa)
    {
        $this->numeroCasa = $numeroCasa;

        return $this;
    }

    /**
     * Get numeroCasa
     *
     * @return integer 
     */
    public function getNumeroCasa()
    {
        return $this->numeroCasa;
    }

    /**
     * Set sector
     *
     * @param string $sector
     * @return GrupoFamiliar
     */
    public function setSector($sector)
    {
        $this->sector = $sector;

        return $this;
    }

    /**
     * Get sector
     *
     * @return string 
     */
    public function getSector()
    {
        return $this->sector;
    }

    /**
     * Set tiempoResidencia
     *
     * @param integer $tiempoResidencia
     * @return GrupoFamiliar
     */
    public function setTiempoResidencia($tiempoResidencia)
    {
        $this->tiempoResidencia = $tiempoResidencia;

        return $this;
    }

    /**
     * Get tiempoResidencia
     *
     * @return integer 
     */
    public function getTiempoResidencia()
    {
        return $this->tiempoResidencia;
    }
}