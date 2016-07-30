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
     * @var string
     *
     * @ORM\Column(name="pregunta", type="string", length=255)
     */
    private $pregunta;

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
     * Set pregunta
     *
     * @param string $pregunta
     * @return AdminPreguntasSituacionComunidad
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
}
