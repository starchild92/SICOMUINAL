<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Comite
 *
 * @ORM\Table(name="comite")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\ComiteRepository")
 */
class Comite
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
     * @ORM\Column(name="nombre", type="string", length=225, unique=true)
     */
    private $nombre;

    /**
     * @var int
     *
     * @ORM\Column(name="cant_voceros", type="integer")
     */
    private $cantVoceros;

    /**
     * @var string
     *
     * @ORM\Column(name="tipo_unidad", type="string", length=255)
     */
    private $tipoUnidad;
    

    public function __toString()
    {
        return $this->nombre;
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
     * Set nombre
     *
     * @param string $nombre
     * @return Comite
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set cantVoceros
     *
     * @param integer $cantVoceros
     * @return Comite
     */
    public function setCantVoceros($cantVoceros)
    {
        $this->cantVoceros = $cantVoceros;

        return $this;
    }

    /**
     * Get cantVoceros
     *
     * @return integer 
     */
    public function getCantVoceros()
    {
        return $this->cantVoceros;
    }

    /**
     * Set tipoUnidad
     *
     * @param string $tipoUnidad
     * @return Comite
     */
    public function setTipoUnidad($tipoUnidad)
    {
        $this->tipoUnidad = $tipoUnidad;

        return $this;
    }

    /**
     * Get tipoUnidad
     *
     * @return string 
     */
    public function getTipoUnidad()
    {
        return $this->tipoUnidad;
    }
}
