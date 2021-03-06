<?php

namespace SICBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * SituacionEconomicaRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class SituacionViviendaRepository extends EntityRepository
{
	public function findByHabitaciones($situacion)
    {
         return $this->getEntityManager()
                ->createQueryBuilder()
                ->select('m')
                ->from('SICBundle:SituacionVivienda', 'm')
                ->innerJoin('m.habitaciones', 'e')
                ->where('e.id = :exampleid' )
                ->setParameter('exampleid', $situacion->getId() )
                ->getQuery()
                ->getResult();
    }

    public function findByEnseres($situacion)
    {
         return $this->getEntityManager()
                ->createQueryBuilder()
                ->select('m')
                ->from('SICBundle:SituacionVivienda', 'm')
                ->innerJoin('m.enseres', 'e')
                ->where('e.id = :exampleid' )
                ->setParameter('exampleid', $situacion->getId() )
                ->getQuery()
                ->getResult();
    }

    public function findByPresenciaInsectos($situacion)
    {
         return $this->getEntityManager()
                ->createQueryBuilder()
                ->select('m')
                ->from('SICBundle:SituacionVivienda', 'm')
                ->innerJoin('m.presenciaInsectos', 'e')
                ->where('e.id = :exampleid' )
                ->setParameter('exampleid', $situacion->getId() )
                ->getQuery()
                ->getResult();
    }

    public function findByMascota($situacion)
    {
         return $this->getEntityManager()
                ->createQueryBuilder()
                ->select('m')
                ->from('SICBundle:SituacionVivienda', 'm')
                ->innerJoin('m.mascota', 'e')
                ->where('e.id = :exampleid' )
                ->setParameter('exampleid', $situacion->getId() )
                ->getQuery()
                ->getResult();
    }
}
