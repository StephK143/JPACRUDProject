package com.skilldistillery.beaches.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.beaches.entities.Beach;

@Transactional
@Service
public class BeachDaoImpl implements BeachDao {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Beach findById(int id) {
		return em.find(Beach.class, id);
	}

	@Override
	public List<Beach> listAll() {
		String jpql = "SELECT b FROM Beach b";
		return em.createQuery(jpql, Beach.class).getResultList();
	}

	@Override
	public Beach addBeach(Beach beach) {
		em.persist(beach);
		return beach;
	}

	@Override
	public Beach updateBeach(Beach beach, int id) {                                        
			Beach b = em.find(Beach.class, id);
			b.setName(beach.getName());
			b.setDescription(beach.getDescription());
			b.setRating(beach.getRating());
			b.setSandColor(beach.getSandColor());
			b.setClosestCity(beach.getClosestCity());
			b.setConsideredTropical(beach.getConsideredTropical());
			b.setAvgHomePrice(beach.getAvgHomePrice());
			b.setMilesToClosestCity(beach.getMilesToClosestCity());
			b.setPopulationOfClosestCity(beach.getPopulationOfClosestCity());
			b.setHighestTemp(beach.getHighestTemp());
			b.setLowestTemp(beach.getLowestTemp());
			b.setTypeOfGovernment(beach.getTypeOfGovernment());
			b.setAvgFallTemp(beach.getAvgFallTemp());
			b.setAvgWinterTemp(beach.getAvgWinterTemp());
			b.setAvgSpringTemp(beach.getAvgSpringTemp());
			b.setAvgSummerTemp(beach.getAvgSummerTemp());
			b.setRegion(beach.getRegion());
			
		return b;
	}

	@Override
		public Boolean deleteBeach(Beach beach) {
		em.remove(beach);
		return true;
		
	}

	@Override
	public Beach findHighestAverageTemp() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beach findLowestAverageTemp() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beach findBeachesConsideredTropical() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Beach listBeachesByTempHighestFirst() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beach listBeachesByTempLowestFirst() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beach findBeachesByReagion() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beach findBeachesByHomePrice() {
		// TODO Auto-generated method stub
		return null;
	}

}
