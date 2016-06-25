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
     * @var string
     *
     * @ORM\Column(name="pregunta", type="string", length=255)
     */
    private $pregunta;

    /**
     * @var string
     *
     * @ORM\Column(name="interrogante", type="text")
     */
    private $interrogante;

    /**
     * @var string
     *
     * @ORM\Column(name="respuesta", type="text")
     */
    private $respuesta;


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
     * Set pregunta
     *
     * @param string $pregunta
     * @return AdminPreguntasParticipacionComunitaria
     */
    public function setPregunta($pregunta)
    {
        $this->pregunta = $pregunta;

        return $this;
    }

    /**
     * Get pregunta
     *
     * @return string 
     */
    public function getPregunta()
    {
        return $this->pregunta;
    }

    /**
     * Set interrogante
     *
     * @param string $interrogante
     * @return AdminPreguntasParticipacionComunitaria
     */
    public function setInterrogante($interrogante)
    {
        $this->interrogante = $interrogante;

        return $this;
    }

    /**
     * Get interrogante
     *
     * @return string 
     */
    public function getInterrogante()
    {
        return $this->interrogante;
    }

    /**
     * Set respuesta
     *
     * @param string $respuesta
     * @return AdminPreguntasParticipacionComunitaria
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
