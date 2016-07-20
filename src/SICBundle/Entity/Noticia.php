<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Noticia
 *
 * @ORM\Table(name="noticia")
 * @ORM\HasLifecycleCallbacks
 * @ORM\Entity(repositoryClass="SICBundle\Repository\NoticiaRepository")
 */
class Noticia
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
     * @ORM\Column(name="titulo", type="string", length=255)
     */
    private $titulo;

    /**
     * @var string
     *
     * @ORM\Column(name="cuerpo", type="text")
     */
    private $cuerpo;

    /**
     * @ORM\ManyToOne(targetEntity="Usuario", inversedBy="noticias")
     * @ORM\JoinColumn(name="usuario_id", referencedColumnName="id")
     */
    private $usuario;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha", type="datetime")
     */
    private $fecha;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechaPub", type="datetime")
     */
    private $fechaPub;

    /**
     * @var string
     *
     * @ORM\Column(name="visibilidad", type="boolean")
     */
    private $visibilidad;

    /**
     * @ORM\PrePersist()
     * @ORM\PreUpdate()
     */
    public function updatedTimestamps()
    {
        $this->fecha = new \DateTime('now');
    }

    public function fecha()
    {
        $fecha = $this->getFecha();
        $dias = array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
        $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

        return $dias[$fecha->format('w')].", ".$fecha->format('d')." de ".$meses[$fecha->format('n')-1]. " ".$fecha->format('Y');
    }

    public function fechayhora()
    {
        $fecha = $this->getFecha();
        $dias = array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
        $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

        return $dias[$fecha->format('w')].", ".$fecha->format('d')." de ".$meses[$fecha->format('n')-1]. " ".$fecha->format('Y')." a las ".$fecha->format('h').":".$fecha->format('i')." ".$fecha->format('a');
    }

    public function fechaPubyhora()
    {
        $fecha = $this->getFechaPub();
        $dias = array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
        $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

        return $dias[$fecha->format('w')].", ".$fecha->format('d')." de ".$meses[$fecha->format('n')-1]. " ".$fecha->format('Y')." a las ".$fecha->format('h').":".$fecha->format('i')." ".$fecha->format('a');
    }

    public function fechaCron()
    {
        $fecha = $this->getFechaPub();
        return $fecha->format('Y')."/".$fecha->format('n')."/".$fecha->format('d')." a las ".$fecha->format('h').":".$fecha->format('i')." ".$fecha->format('a');
    }

    public function fechaOrden()
    {
        $fecha = $this->getFecha();
        return $fecha->format('Y')."/".$fecha->format('n')."/".$fecha->format('d')." a las ".$fecha->format('h').":".$fecha->format('i')." ".$fecha->format('a');
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
     * Set titulo
     *
     * @param string $titulo
     * @return Noticia
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;

        return $this;
    }

    /**
     * Get titulo
     *
     * @return string 
     */
    public function getTitulo()
    {
        return $this->titulo;
    }

    /**
     * Set cuerpo
     *
     * @param string $cuerpo
     * @return Noticia
     */
    public function setCuerpo($cuerpo)
    {
        $this->cuerpo = $cuerpo;

        return $this;
    }

    /**
     * Get cuerpo
     *
     * @return string 
     */
    public function getCuerpo()
    {
        return $this->cuerpo;
    }

    /**
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return Noticia
     */
    public function setFecha($fecha)
    {
        $this->fecha = $fecha;

        return $this;
    }

    /**
     * Get fecha
     *
     * @return \DateTime 
     */
    public function getFecha()
    {
        return $this->fecha;
    }

    /**
     * Set fechaPub
     *
     * @param \DateTime $fechaPub
     * @return Noticia
     */
    public function setFechaPub($fechaPub)
    {
        $this->fechaPub = $fechaPub;

        return $this;
    }

    /**
     * Get fechaPub
     *
     * @return \DateTime 
     */
    public function getFechaPub()
    {
        return $this->fechaPub;
    }

    /**
     * Set visibilidad
     *
     * @param boolean $visibilidad
     * @return Noticia
     */
    public function setVisibilidad($visibilidad)
    {
        $this->visibilidad = $visibilidad;

        return $this;
    }

    /**
     * Get visibilidad
     *
     * @return boolean 
     */
    public function getVisibilidad()
    {
        return $this->visibilidad;
    }

    /**
     * Set usuario
     *
     * @param \SICBundle\Entity\Usuario $usuario
     * @return Noticia
     */
    public function setUsuario(\SICBundle\Entity\Usuario $usuario = null)
    {
        $this->usuario = $usuario;

        return $this;
    }

    /**
     * Get usuario
     *
     * @return \SICBundle\Entity\Usuario 
     */
    public function getUsuario()
    {
        return $this->usuario;
    }
}
