package com.skilldistillery.oceanlife.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.oceanlife.entities.OceanLife;

@Service
@Transactional
public class OceanLifeDaoImpl implements OceanLifeDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public OceanLife findBy(int id) {
		
		return em.find(OceanLife.class, id);
	}

	public List<OceanLife> findAll() {
		String jpql = "SELECT fish FROM OceanLife fish";
		return em.createQuery(jpql, OceanLife.class).getResultList();
	}

	public List<OceanLife>searchByKeyword(String searchTerm){
		
		String jpql = "SELECT fish FROM OceanLife fish WHERE fish.name "
				+ "LIKE :searchTerm OR fish.specialAbilities "
				+ "LIKE :searchTerm OR fish.varieties "
				+ "LIKE :searchTerm";

		System.out.println("\n\n\nJPQL IN DAO "+jpql);
		TypedQuery<OceanLife> query = em.createQuery(jpql,OceanLife.class);
		query.setParameter("searchTerm", "%"+searchTerm+"%");
		return query.getResultList();
	}
	public OceanLife create(OceanLife fish) {
		em.persist(fish);
		em.flush();
		return fish;

	}

	public OceanLife update(int fishId, OceanLife fish) {
		System.out.println("\n\nOceanLifeDao Update method: "+fish);
		OceanLife managed = em.find(OceanLife.class, fishId);
		managed.setName(fish.getName());
		managed.setImageUrl(fish.getImageUrl());
		managed.setLocation(fish.getLocation());
		managed.setSpecialAbilities(fish.getSpecialAbilities());
		managed.setSize(fish.getSize());
		managed.setDiet(fish.getDiet());
		managed.setVarieties(fish.getVarieties());
		em.merge(managed);
		em.flush();

		return managed;
	}

	public boolean deleteById(int fishId) {

		boolean success = false;
		OceanLife oL = em.find(OceanLife.class, fishId);

		if (oL == null) {
			return false;
		}

		if (!em.contains(oL)) {
			success = true;
		}

		em.remove(oL); // performs the delete on the managed entity
		em.flush();

		return success;
	}
}
