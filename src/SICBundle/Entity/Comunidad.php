<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Comunidad
 *
 * @ORM\Table(name="comunidad")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\ComunidadRepository")
 */
class Comunidad
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
     * @ORM\Column(name="estado", type="string", length=255)
     */
    private $estado;

    /**
     * @var string
     *
     * @ORM\Column(name="municipio", type="string", length=255)
     */
    private $municipio;

    /**
     * @var string
     *
     * @ORM\Column(name="parroquia", type="string", length=255)
     */
    private $parroquia;

    /**
     * @var string
     *
     * @ORM\Column(name="sector", type="string", length=255)
     */
    private $sector;

    /**
     * @var string
     *
     * @ORM\Column(name="comunidad", type="string", length=255)
     */
    private $comunidad;

    /**
     * @var string
     *
     * @ORM\Column(name="direccion", type="string", length=255)
     */
    private $direccion;


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
     * Set estado
     *
     * @param string $estado
     * @return Comunidad
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return string 
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set municipio
     *
     * @param string $municipio
     * @return Comunidad
     */
    public function setMunicipio($municipio)
    {
        $this->municipio = $municipio;

        return $this;
    }

    /**
     * Get municipio
     *
     * @return string 
     */
    public function getMunicipio()
    {
        return $this->municipio;
    }

    /**
     * Set parroquia
     *
     * @param string $parroquia
     * @return Comunidad
     */
    public function setParroquia($parroquia)
    {
        $this->parroquia = $parroquia;

        return $this;
    }

    /**
     * Get parroquia
     *
     * @return string 
     */
    public function getParroquia()
    {
        return $this->parroquia;
    }

    /**
     * Set sector
     *
     * @param string $sector
     * @return Comunidad
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
     * Set comunidad
     *
     * @param string $comunidad
     * @return Comunidad
     */
    public function setComunidad($comunidad)
    {
        $this->comunidad = $comunidad;

        return $this;
    }

    /**
     * Get comunidad
     *
     * @return string 
     */
    public function getComunidad()
    {
        return $this->comunidad;
    }

    /**
     * Set direccion
     *
     * @param string $direccion
     * @return Comunidad
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
}
