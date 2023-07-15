package com.skilldistillery.oceanlife.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.oceanlife.entities.OceanLife;

@Service
@Transactional
public class OceanLifeDaoImpl implements OceanLifeDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public OceanLife findById(int id) {
		
		return em.find(OceanLife.class, id);
	}

	public List<OceanLife> findAll() {
		String jpql = "SELECT fish FROM OceanLife fish";
		return em.createQuery(jpql, OceanLife.class).getResultList();
	}

	public OceanLife create(OceanLife fish) {
		return null;

	}

	public OceanLife update(int fishId, OceanLife fish) {

		return null;
	}

	public boolean deleteById(int fishId) {

		return false;
	}
}
