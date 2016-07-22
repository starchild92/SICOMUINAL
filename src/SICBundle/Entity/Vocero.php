<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Vocero
 *
 * @ORM\Table(name="vocero")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\VoceroRepository")
 */
class Vocero
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
     * @ORM\Column(name="tipo", type="string", length=255)
     */
    private $tipo;

    /**
     * @var int
     *
     * @ORM\Column(name="votos_electo", type="integer")
     */
    private $votosElecto;

    /**
     * @var string
     *
     * @ORM\Column(name="persona", type="string", length=255)
     */
    private $persona;

    /**
     * @ORM\OneToOne(targetEntity="Comite", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="vocero", referencedColumnName="id", onDelete="CASCADE")
     */
    private $comite;

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
     * Set tipo
     *
     * @param string $tipo
     * @return Vocero
     */
    public function setTipo($tipo)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return string 
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set votosElecto
     *
     * @param integer $votosElecto
     * @return Vocero
     */
    public function setVotosElecto($votosElecto)
    {
        $this->votosElecto = $votosElecto;

        return $this;
    }

    /**
     * Get votosElecto
     *
     * @return integer 
     */
    public function getVotosElecto()
    {
        return $this->votosElecto;
    }

    /**
     * Set persona
     *
     * @param string $persona
     * @return Vocero
     */
    public function setPersona($persona)
    {
        $this->persona = $persona;

        return $this;
    }

    /**
     * Get persona
     *
     * @return string 
     */
    public function getPersona()
    {
        return $this->persona;
    }

    /**
     * Set comite
     *
     * @param \SICBundle\Entity\Comite $comite
     * @return Vocero
     */
    public function setComite(\SICBundle\Entity\Comite $comite = null)
    {
        $this->comite = $comite;

        return $this;
    }

    /**
     * Get comite
     *
     * @return \SICBundle\Entity\Comite 
     */
    public function getComite()
    {
        return $this->comite;
    }
}
