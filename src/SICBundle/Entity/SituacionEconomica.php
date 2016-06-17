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
     * @var string
     *
     * @ORM\Column(name="dondeTrabaja", type="string", length=255)
     */
    private $dondeTrabaja;

    /**
     * @var string
     *
     * @ORM\Column(name="actividadComercialenVivienda", type="string", length=255)
     */
    private $actividadComercialenVivienda;

    /**
     * @var float
     *
     * @ORM\Column(name="ingresoFamiliarEspecifico", type="float")
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
     * @ORM\Column(name="poseeVehiculo", type="string", length=255)
     */
    private $poseeVehiculo;


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
     * Set dondeTrabaja
     *
     * @param string $dondeTrabaja
     * @return SituacionEconomica
     */
    public function setDondeTrabaja($dondeTrabaja)
    {
        $this->dondeTrabaja = $dondeTrabaja;

        return $this;
    }

    /**
     * Get dondeTrabaja
     *
     * @return string 
     */
    public function getDondeTrabaja()
    {
        return $this->dondeTrabaja;
    }

    /**
     * Set actividadComercialenVivienda
     *
     * @param string $actividadComercialenVivienda
     * @return SituacionEconomica
     */
    public function setActividadComercialenVivienda($actividadComercialenVivienda)
    {
        $this->actividadComercialenVivienda = $actividadComercialenVivienda;

        return $this;
    }

    /**
     * Get actividadComercialenVivienda
     *
     * @return string 
     */
    public function getActividadComercialenVivienda()
    {
        return $this->actividadComercialenVivienda;
    }

    /**
     * Set ingresoFamiliarEspecifico
     *
     * @param float $ingresoFamiliarEspecifico
     * @return SituacionEconomica
     */
    public function setIngresoFamiliarEspecifico($ingresoFamiliarEspecifico)
    {
        $this->ingresoFamiliarEspecifico = $ingresoFamiliarEspecifico;

        return $this;
    }

    /**
     * Get ingresoFamiliarEspecifico
     *
     * @return float 
     */
    public function getIngresoFamiliarEspecifico()
    {
        return $this->ingresoFamiliarEspecifico;
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
     * Set poseeVehiculo
     *
     * @param string $poseeVehiculo
     * @return SituacionEconomica
     */
    public function setPoseeVehiculo($poseeVehiculo)
    {
        $this->poseeVehiculo = $poseeVehiculo;

        return $this;
    }

    /**
     * Get poseeVehiculo
     *
     * @return string 
     */
    public function getPoseeVehiculo()
    {
        return $this->poseeVehiculo;
    }
}
