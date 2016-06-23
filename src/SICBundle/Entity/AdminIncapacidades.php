<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminIncapacidades
 *
 * @ORM\Table(name="admin_incapacidades")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminIncapacidadesRepository")
 */
class AdminIncapacidades
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
     * @ORM\Column(name="incapacidad", type="string", length=255, unique=true)
     */
    private $incapacidad;

    public function __toString()
    {
        return $this->incapacidad;
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
     * Set incapacidad
     *
     * @param string $incapacidad
     * @return AdminIncapacidades
     */
    public function setIncapacidad($incapacidad)
    {
        $this->incapacidad = $incapacidad;

        return $this;
    }

    /**
     * Get incapacidad
     *
     * @return string 
     */
    public function getIncapacidad()
    {
        return $this->incapacidad;
    }
}
