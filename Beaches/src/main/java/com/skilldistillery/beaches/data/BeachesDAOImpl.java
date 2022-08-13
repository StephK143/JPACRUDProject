package com.skilldistillery.beaches.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

@Service
@Transactional
public class BeachesDAOImpl implements BeachesDAO{

	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Beach findBeachById(int id) {
		return em.find(Beach.class, id);
	}


	
}
