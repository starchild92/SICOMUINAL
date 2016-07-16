<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminNacionalidad
 *
 * @ORM\Table(name="admin_nacionalidad")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminNacionalidadRepository")
 */
class AdminNacionalidad
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
     * @ORM\Column(name="nacionalidad", type="string", length=255, unique=true)
     */
    private $nacionalidad;

    public function __toString()
    {
        return $this->nacionalidad;
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
     * Set nacionalidad
     *
     * @param string $nacionalidad
     * @return AdminNacionalidad
     */
    public function setNacionalidad($nacionalidad)
    {
        $this->nacionalidad = $nacionalidad;

        return $this;
    }

    /**
     * Get nacionalidad
     *
     * @return string 
     */
    public function getNacionalidad()
    {
        return $this->nacionalidad;
    }
}
