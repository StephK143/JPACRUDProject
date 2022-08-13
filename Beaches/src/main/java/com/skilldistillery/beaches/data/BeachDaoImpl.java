package com.skilldistillery.beaches.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.beaches.entities.Beach;

@Service
@Transactional
public class BeachDaoImpl implements BeachDao{

	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Beach findById(int id) {
		return em.find(Beach.class, id);
	}


	
}
