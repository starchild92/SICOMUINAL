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
     * @ORM\ManyToOne(targetEntity="AdminPreguntasSituacionComunidad", cascade={"persist"})
     * @ORM\JoinColumn(name="pregunta", referencedColumnName="id", onDelete="CASCADE")
     */
    private $preguntasSituacionComunidad;

    /**
     * @var string
     *
     * @ORM\Column(name="respuesta", type="text")
     */
    private $respuesta;

    /**
     * @ORM\OneToOne(targetEntity="Planillas", mappedBy="situacionComunidad")
     */
    private $planilla;

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
     * @return SituacionComunidad
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

    /**
     * Set preguntasSituacionComunidad
     *
     * @param \SICBundle\Entity\AdminPreguntasSituacionComunidad $preguntasSituacionComunidad
     * @return SituacionComunidad
     */
    public function setPreguntasSituacionComunidad(\SICBundle\Entity\AdminPreguntasSituacionComunidad $preguntasSituacionComunidad = null)
    {
        $this->preguntasSituacionComunidad = $preguntasSituacionComunidad;

        return $this;
    }

    /**
     * Get preguntasSituacionComunidad
     *
     * @return \SICBundle\Entity\AdminPreguntasSituacionComunidad 
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
