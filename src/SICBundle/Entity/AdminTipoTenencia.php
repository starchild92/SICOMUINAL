<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminTipoTenencia
 *
 * @ORM\Table(name="admin_tipo_tenencia")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminTipoTenenciaRepository")
 */
class AdminTipoTenencia
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
     * @ORM\Column(name="forma", type="string", length=255, unique=true)
     */
    private $forma;

    public function __toString() { return $this->forma; }

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
     * Set forma
     *
     * @param string $forma
     * @return AdminTipoTenencia
     */
    public function setForma($forma)
    {
        $this->forma = $forma;

        return $this;
    }

    /**
     * Get forma
     *
     * @return string 
     */
    public function getForma()
    {
        return $this->forma;
    }
}
