<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminRespCerrada
 *
 * @ORM\Table(name="admin_resp_cerrada")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminRespCerradaRepository")
 */
class AdminRespCerrada
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
     * @ORM\Column(name="respuesta", type="string", length=255, unique=true)
     */
    private $respuesta;


    // public function __toString()
    // {
    //     return $this->respuesta;
    // }

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
     * Set respuesta
     *
     * @param string $respuesta
     * @return AdminRespCerrada
     */
    public function setRespuesta($respuesta)
    {
        $this->respuesta = $respuesta;

        return $this;
    }

    /**
     * Get respuesta
     *
     * @return string 
     */
    public function getRespuesta()
    {
        return $this->respuesta;
    }
}
