<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminPreguntasParticipacionComunitaria
 *
 * @ORM\Table(name="admin_preguntas_participacion_comunitaria")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminPreguntasParticipacionComunitariaRepository")
 */
class AdminPreguntasParticipacionComunitaria
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
     * @ORM\ManyToOne(targetEntity="AdminPreguntas", cascade={"persist"})
     * @ORM\JoinColumn(name="pregunta", referencedColumnName="id", onDelete="CASCADE")
     */
    private $interrogante;

    /**
     * @ORM\ManyToOne(targetEntity="AdminRespCerrada", cascade={"persist"})
     * @ORM\JoinColumn(name="respCerrada", referencedColumnName="id", onDelete="CASCADE")
     */
    private $respuesta;

    public function __toString(){ return $this->interrogante; }

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
     * Set interrogante
     *
     * @param \SICBundle\Entity\AdminPreguntas $interrogante
     * @return AdminPreguntasParticipacionComunitaria
     */
    public function setInterrogante(\SICBundle\Entity\AdminPreguntas $interrogante = null)
    {
        $this->interrogante = $interrogante;

        return $this;
    }

    /**
     * Get interrogante
     *
     * @return \SICBundle\Entity\AdminPreguntas 
     */
    public function getInterrogante()
    {
        return $this->interrogante;
    }

    /**
     * Set respuesta
     *
     * @param \SICBundle\Entity\AdminRespCerrada $respuesta
     * @return AdminPreguntasParticipacionComunitaria
     */
    public function setRespuesta(\SICBundle\Entity\AdminRespCerrada $respuesta = null)
    {
        $this->respuesta = $respuesta;

        return $this;
    }

    /**
     * Get respuesta
     *
     * @return \SICBundle\Entity\AdminRespCerrada 
     */
    public function getRespuesta()
    {
        return $this->respuesta;
    }
}
