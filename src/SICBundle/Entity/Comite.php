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
     * @ORM\Column(name="nombre", type="string", length=225, nullable=true)
     */
    private $nombre;

    /**
     * @var int
     *
     * @ORM\Column(name="cant_voceros", type="integer", nullable=true)
     */
    private $cantVoceros;

    /**
     * @ORM\ManyToMany(targetEntity="Vocero", cascade={"persist", "remove"}, orphanRemoval=true)
     * @ORM\JoinTable(name="comite_voceros",
     *      joinColumns={@ORM\JoinColumn(name="comite_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="vocero_id", referencedColumnName="id", unique=true)}
     *      )
     */
    private $voceros;

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
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->voceros = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add voceros
     *
     * @param \SICBundle\Entity\Vocero $voceros
     * @return Comite
     */
    public function addVocero(\SICBundle\Entity\Vocero $voceros)
    {
        $this->voceros[] = $voceros;

        return $this;
    }

    /**
     * Remove voceros
     *
     * @param \SICBundle\Entity\Vocero $voceros
     */
    public function removeVocero(\SICBundle\Entity\Vocero $voceros)
    {
        $this->voceros->removeElement($voceros);
    }

    /**
     * Get voceros
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getVoceros()
    {
        return $this->voceros;
    }
}
