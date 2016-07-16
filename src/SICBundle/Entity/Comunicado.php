<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Comunicado
 *
 * @ORM\Table(name="comunicado")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\ComunicadoRepository")
 */
class Comunicado
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
     * @ORM\ManyToOne(targetEntity="Usuario", inversedBy="comunicados")
     * @ORM\JoinColumn(name="usuario_id", referencedColumnName="id")
     */
    private $emisor;

    /**
     * @var string
     *
     * @ORM\Column(name="titulo", type="string", length=255)
     */
    private $titulo;

    /**
     * @var string
     *
     * @ORM\Column(name="cuerpo", type="text")
     */
    private $cuerpo;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha", type="datetime")
     */
    private $fecha;

    /**
     * @var int
     *
     * @ORM\Column(name="numDestinatarios", type="integer")
     */
    private $numDestinatarios;


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
     * Set titulo
     *
     * @param string $titulo
     * @return Comunicado
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;

        return $this;
    }

    /**
     * Get titulo
     *
     * @return string 
     */
    public function getTitulo()
    {
        return $this->titulo;
    }

    /**
     * Set cuerpo
     *
     * @param string $cuerpo
     * @return Comunicado
     */
    public function setCuerpo($cuerpo)
    {
        $this->cuerpo = $cuerpo;

        return $this;
    }

    /**
     * Get cuerpo
     *
     * @return string 
     */
    public function getCuerpo()
    {
        return $this->cuerpo;
    }

    /**
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return Comunicado
     */
    public function setFecha($fecha)
    {
        $this->fecha = $fecha;

        return $this;
    }

    /**
     * Get fecha
     *
     * @return \DateTime 
     */
    public function getFecha()
    {
        return $this->fecha;
    }

    /**
     * Set numDestinatarios
     *
     * @param integer $numDestinatarios
     * @return Comunicado
     */
    public function setNumDestinatarios($numDestinatarios)
    {
        $this->numDestinatarios = $numDestinatarios;

        return $this;
    }

    /**
     * Get numDestinatarios
     *
     * @return integer 
     */
    public function getNumDestinatarios()
    {
        return $this->numDestinatarios;
    }

    /**
     * Set emisor
     *
     * @param \SICBundle\Entity\Usuario $emisor
     * @return Comunicado
     */
    public function setEmisor(\SICBundle\Entity\Usuario $emisor = null)
    {
        $this->emisor = $emisor;

        return $this;
    }

    /**
     * Get emisor
     *
     * @return \SICBundle\Entity\Usuario 
     */
    public function getEmisor()
    {
        return $this->emisor;
    }
}
