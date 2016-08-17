<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SituacionComunidad
 *
 * @ORM\Table(name="situacion_comunidad")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\SituacionComunidadRepository")
 */
class SituacionComunidad
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
     * @ORM\ManyToMany(targetEntity="AdminPreguntasSituacionComunidad", cascade={"persist"}, orphanRemoval=true)
     * @ORM\JoinTable(name="situCom_pregSituComunidad",
     *      joinColumns={@ORM\JoinColumn(name="situCom_id", referencedColumnName="id", onDelete="CASCADE")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="pregSituComunidad_id", referencedColumnName="id", onDelete="CASCADE")}
     *      )
     */
    private $preguntasSituacionComunidad;

    /**
     * @ORM\OneToOne(targetEntity="Planillas", mappedBy="situacionComunidad")
     */
    private $planilla;
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->preguntasSituacionComunidad = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Add preguntasSituacionComunidad
     *
     * @param \SICBundle\Entity\AdminPreguntasSituacionComunidad $preguntasSituacionComunidad
     * @return SituacionComunidad
     */
    public function addPreguntasSituacionComunidad(\SICBundle\Entity\AdminPreguntasSituacionComunidad $preguntasSituacionComunidad)
    {
        $this->preguntasSituacionComunidad[] = $preguntasSituacionComunidad;

        return $this;
    }

    /**
     * Remove preguntasSituacionComunidad
     *
     * @param \SICBundle\Entity\AdminPreguntasSituacionComunidad $preguntasSituacionComunidad
     */
    public function removePreguntasSituacionComunidad(\SICBundle\Entity\AdminPreguntasSituacionComunidad $preguntasSituacionComunidad)
    {
        $this->preguntasSituacionComunidad->removeElement($preguntasSituacionComunidad);
    }

    /**
     * Get preguntasSituacionComunidad
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getPreguntasSituacionComunidad()
    {
        return $this->preguntasSituacionComunidad;
    }

    /**
     * Set planilla
     *
     * @param \SICBundle\Entity\Planillas $planilla
     * @return SituacionComunidad
     */
    public function setPlanilla(\SICBundle\Entity\Planillas $planilla = null)
    {
        $this->planilla = $planilla;

        return $this;
    }

    /**
     * Get planilla
     *
     * @return \SICBundle\Entity\Planillas 
     */
    public function getPlanilla()
    {
        return $this->planilla;
    }
}
