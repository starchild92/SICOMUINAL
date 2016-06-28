<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Vivienda
 *
 * @ORM\Table(name="situacion_vivienda")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\SituacionViviendaRepository")
 */
class SituacionVivienda
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
     * @ORM\ManyToOne(targetEntity="AdminTipoVivienda", cascade={"persist"})
     * @ORM\JoinColumn(name="tipoVivienda", referencedColumnName="id", onDelete="CASCADE")
     */
    private $tipo;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTenencia", cascade={"persist"})
     * @ORM\JoinColumn(name="tipoTenencia", referencedColumnName="id", onDelete="CASCADE")
     */
    private $tenencia;

    /**
     * @var string
     *
     * @ORM\Column(name="terrenoPropio", type="string", length=255)
     */
    private $terrenoPropio;

    /**
     * @var string
     *
     * @ORM\Column(name="ovc", type="string", length=255)
     */
    private $ovc;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoHabitacionesVivienda")
     * @ORM\JoinTable(name="sitVivi_tHV",
     *      joinColumns={@ORM\JoinColumn(name="sitViv", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="tHabViv_id", referencedColumnName="id")}
     *      )
     */
    private $habitaciones;

    /**
     * @var integer
     *
     * @ORM\Column(name="cantidadHabitaciones", type="integer")
     */
    private $cantidadHabitaciones;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoParedes", cascade={"persist"})
     * @ORM\JoinColumn(name="tipoParedes", referencedColumnName="id", onDelete="CASCADE")
     */
    private $paredes;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoTecho", cascade={"persist"})
     * @ORM\JoinColumn(name="tipoTecho", referencedColumnName="id", onDelete="CASCADE")
     */
    private $techo;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoEnseres")
     * @ORM\JoinTable(name="sitVivi_enseres",
     *      joinColumns={@ORM\JoinColumn(name="sitViv", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="enseres_id", referencedColumnName="id")}
     *      )
     */
    private $enseres;

    /**
     * @ORM\ManyToOne(targetEntity="AdminSalubridadVivienda", cascade={"persist"})
     * @ORM\JoinColumn(name="salubridad", referencedColumnName="id", onDelete="CASCADE")
     */
    private $salubridad;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoPlagas")
     * @ORM\JoinTable(name="sitVivi_plaga",
     *      joinColumns={@ORM\JoinColumn(name="sitViv", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="plaga_id", referencedColumnName="id")}
     *      )
     */
    private $presenciaInsectos;

    /**
     * @ORM\ManyToMany(targetEntity="AdminTipoMascotas")
     * @ORM\JoinTable(name="sitVivi_mascota",
     *      joinColumns={@ORM\JoinColumn(name="sitViv", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="masco_id", referencedColumnName="id")}
     *      )
     */
    private $mascota;
    
    


}
