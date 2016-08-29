<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminTipoSituacion
 *
 * @ORM\Table(name="admin_tipo_situacion")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminTipoSituacionRepository")
 */
class AdminTipoSituacion
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
     * @ORM\Column(name="situacion", type="string", length=255, unique=true)
     */
    private $situacion;

    public function __toString(){ return $this->situacion; }

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
     * Set situacion
     *
     * @param string $situacion
     * @return AdminTipoSituacion
     */
    public function setSituacion($situacion)
    {
        $this->situacion = $situacion;

        return $this;
    }

    /**
     * Get situacion
     *
     * @return string 
     */
    public function getSituacion()
    {
        return $this->situacion;
    }
}
