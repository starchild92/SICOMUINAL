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
     * @ORM\Column(name="votos_electo", type="integer", nullable=true)
     */
    private $votosElecto;

    /**
     * @var string
     *
     * @ORM\Column(name="persona", type="string", length=255, unique=true)
     */
    private $persona;

    /**
     * @ORM\ManyToMany(targetEntity="Comite", mappedBy="voceros")
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
     * Constructor
     */
    public function __construct()
    {
        $this->comite = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add comite
     *
     * @param \SICBundle\Entity\Comite $comite
     * @return Vocero
     */
    public function addComite(\SICBundle\Entity\Comite $comite)
    {
        $this->comite[] = $comite;

        return $this;
    }

    /**
     * Remove comite
     *
     * @param \SICBundle\Entity\Comite $comite
     */
    public function removeComite(\SICBundle\Entity\Comite $comite)
    {
        $this->comite->removeElement($comite);
    }

    /**
     * Get comite
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getComite()
    {
        return $this->comite;
    }
}
