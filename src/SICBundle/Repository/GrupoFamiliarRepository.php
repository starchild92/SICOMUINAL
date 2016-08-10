<?php

namespace SICBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * GrupoFamiliarRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class GrupoFamiliarRepository extends EntityRepository
{
	public function findSectores()
	{
		$query = $this->getEntityManager()
                ->createQuery('SELECT gf 
                FROM SICBundle:GrupoFamiliar gf
                GROUP BY gf.sector');
        $result = $query->getResult();
        return $result;
	}

	public function findNumeroViviendas($sector)
	{
		$query = $this->getEntityManager()
			->createQuery('
				SELECT gf FROM SICBundle:GrupoFamiliar gf
				WHERE gf.sector = :sector
				GROUP BY 
					gf.direccion, gf.numeroCasa
				');
        $query->setparameter('sector', $sector);
		$result = $query->getResult();
		return $result;
	}

	public function findCantidadMiembros($sector)
	{
		$query = $this->getEntityManager()
		->createQuery('
			SELECT SUM(gf.cantidadMiembros) as cantidad
			FROM SICBundle:GrupoFamiliar gf
			WHERE gf.sector = :sector');
		$query->setparameter('sector', $sector);
		$result = $query->getResult();
		return $result[0];
	}
}
