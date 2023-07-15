package com.skilldistillery.oceanlife.data;

import java.util.List;

import com.skilldistillery.oceanlife.entities.OceanLife;

public interface OceanLifeDAO {

	
		OceanLife findById(int id) ;
		List<OceanLife> findAll();
		OceanLife create (OceanLife fish);
		OceanLife update(int fishId, OceanLife fish);
		boolean deleteById(int fishId);
}
