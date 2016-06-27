<?php

namespace SICBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SituacionEconomica
 *
 * @ORM\Table(name="situacion_economica")
 * @ORM\Entity(repositoryClass="SICBundle\Repository\SituacionEconomicaRepository")
 */
class SituacionEconomica
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
     * @ORM\ManyToOne(targetEntity="AdminUbicacionTrabajo", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="ubcTrab", referencedColumnName="id", onDelete="CASCADE")
     */
    private $dondeTrabaja;

    /**
     * @ORM\ManyToOne(targetEntity="AdminVentaVivienda", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="ventaV_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $actividadComercialenVivienda;

    /**
     * @ORM\ManyToOne(targetEntity="AdminTipoIngresos", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="ingFam_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $ingresoFamiliarEspecifico;

    /**
     * @var string
     *
     * @ORM\Column(name="ingresoFamiliar", type="string", length=255)
     */
    private $ingresoFamiliar;

    /**
     * @var string
     *
     * @ORM\Column(name="placa", type="string", length=255)
     */
    private $placa;

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
     * Set ingresoFamiliar
     *
     * @param string $ingresoFamiliar
     * @return SituacionEconomica
     */
    public function setIngresoFamiliar($ingresoFamiliar)
    {
        $this->ingresoFamiliar = $ingresoFamiliar;

        return $this;
    }

    /**
     * Get ingresoFamiliar
     *
     * @return string 
     */
    public function getIngresoFamiliar()
    {
        return $this->ingresoFamiliar;
    }

    /**
     * Set placa
     *
     * @param string $placa
     * @return SituacionEconomica
     */
    public function setPlaca($placa)
    {
        $this->placa = $placa;

        return $this;
    }

    /**
     * Get placa
     *
     * @return string 
     */
    public function getPlaca()
    {
        return $this->placa;
    }

    /**
     * Set dondeTrabaja
     *
     * @param \SICBundle\Entity\AdminUbicacionTrabajo $dondeTrabaja
     * @return SituacionEconomica
     */
    public function setDondeTrabaja(\SICBundle\Entity\AdminUbicacionTrabajo $dondeTrabaja = null)
    {
        $this->dondeTrabaja = $dondeTrabaja;

        return $this;
    }

    /**
     * Get dondeTrabaja
     *
     * @return \SICBundle\Entity\AdminUbicacionTrabajo 
     */
    public function getDondeTrabaja()
    {
        return $this->dondeTrabaja;
    }

    /**
     * Set actividadComercialenVivienda
     *
     * @param \SICBundle\Entity\AdminVentaVivienda $actividadComercialenVivienda
     * @return SituacionEconomica
     */
    public function setActividadComercialenVivienda(\SICBundle\Entity\AdminVentaVivienda $actividadComercialenVivienda = null)
    {
        $this->actividadComercialenVivienda = $actividadComercialenVivienda;

        return $this;
    }

    /**
     * Get actividadComercialenVivienda
     *
     * @return \SICBundle\Entity\AdminVentaVivienda 
     */
    public function getActividadComercialenVivienda()
    {
        return $this->actividadComercialenVivienda;
    }

    /**
     * Set ingresoFamiliarEspecifico
     *
     * @param \SICBundle\Entity\AdminTipoIngresos $ingresoFamiliarEspecifico
     * @return SituacionEconomica
     */
    public function setIngresoFamiliarEspecifico(\SICBundle\Entity\AdminTipoIngresos $ingresoFamiliarEspecifico = null)
    {
        $this->ingresoFamiliarEspecifico = $ingresoFamiliarEspecifico;

        return $this;
    }

    /**
     * Get ingresoFamiliarEspecifico
     *
     * @return \SICBundle\Entity\AdminTipoIngresos 
     */
    public function getIngresoFamiliarEspecifico()
    {
        return $this->ingresoFamiliarEspecifico;
    }
}
