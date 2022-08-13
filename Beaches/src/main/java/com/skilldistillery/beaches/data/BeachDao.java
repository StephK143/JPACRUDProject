package com.skilldistillery.beaches.data;

import com.skilldistillery.beaches.entities.Beach;

public interface BeachDao {

	Beach findById(int id);
	
	}

