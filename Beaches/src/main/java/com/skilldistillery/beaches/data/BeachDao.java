package com.skilldistillery.beaches.data;

import java.util.List;

import com.skilldistillery.beaches.entities.Beach;

public interface BeachDao {

	Beach findById(int id);

	List<Beach> listAll();

	Beach addBeach(Beach beach);

	Beach updateBeach(Beach beach, int id);

	Boolean deleteBeach(Beach beach);

	Beach findHighestAverageTemp();

	Beach findLowestAverageTemp();

	Beach listBeachesByTempHighestFirst();

	Beach listBeachesByTempLowestFirst();

	Beach findBeachesConsideredTropical();

	Beach findBeachesByReagion();

	Beach findBeachesByHomePrice();

}
