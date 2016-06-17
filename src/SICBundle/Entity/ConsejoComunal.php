<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ConsejoComunal
 *
 * @ORM\Table(name="consejo_comunal")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\ConsejoComunalRepository")
 */
class ConsejoComunal
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
     * @ORM\Column(name="nombre", type="string", length=255)
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="codigo", type="string", length=255)
     */
    private $codigo;

    /**
     * @var string
     *
     * @ORM\Column(name="rif", type="string", length=255)
     */
    private $rif;

    /**
     * @var string
     *
     * @ORM\Column(name="numeroCuenta", type="string", length=255)
     */
    private $numeroCuenta;


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
     * @return ConsejoComunal
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
     * Set codigo
     *
     * @param string $codigo
     * @return ConsejoComunal
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;

        return $this;
    }

    /**
     * Get codigo
     *
     * @return string 
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * Set rif
     *
     * @param string $rif
     * @return ConsejoComunal
     */
    public function setRif($rif)
    {
        $this->rif = $rif;

        return $this;
    }

    /**
     * Get rif
     *
     * @return string 
     */
    public function getRif()
    {
        return $this->rif;
    }

    /**
     * Set numeroCuenta
     *
     * @param string $numeroCuenta
     * @return ConsejoComunal
     */
    public function setNumeroCuenta($numeroCuenta)
    {
        $this->numeroCuenta = $numeroCuenta;

        return $this;
    }

    /**
     * Get numeroCuenta
     *
     * @return string 
     */
    public function getNumeroCuenta()
    {
        return $this->numeroCuenta;
    }
}
