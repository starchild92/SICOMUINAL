<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminPreguntasSituacionComunidad
 *
 * @ORM\Table(name="admin_preguntas_situacion_comunidad")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminPreguntasSituacionComunidadRepository")
 */
class AdminPreguntasSituacionComunidad
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
     * @ORM\ManyToOne(targetEntity="AdminPreguntasSitCom", cascade={"persist"})
     * @ORM\JoinColumn(name="pregunta_sit_com", referencedColumnName="id", onDelete="CASCADE")
     */
    private $pregunta;

    /**
     * @var string
     *
     * @ORM\Column(name="pregunta", type="text")
     */
    private $respuesta;

    public function __toString(){ return $this->pregunta; }

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
     * @return AdminPreguntasSituacionComunidad
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
     * Set pregunta
     *
     * @param \SICBundle\Entity\AdminPreguntas $pregunta
     * @return AdminPreguntasSituacionComunidad
     */
    public function setPregunta(\SICBundle\Entity\AdminPreguntas $pregunta = null)
    {
        $this->pregunta = $pregunta;

        return $this;
    }

    /**
     * Get pregunta
     *
     * @return \SICBundle\Entity\AdminPreguntas 
     */
    public function getPregunta()
    {
        return $this->pregunta;
    }
}
