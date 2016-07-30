<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AdminPreguntasSitCom
 *
 * @ORM\Table(name="admin_preguntas_sit_com")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\AdminPreguntasSitComRepository")
 */
class AdminPreguntasSitCom
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
     * @ORM\Column(name="pregunta", type="text")
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
     * @return AdminPreguntasSitCom
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
