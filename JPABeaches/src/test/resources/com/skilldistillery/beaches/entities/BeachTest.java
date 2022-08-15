package com.skilldistillery.beaches.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class BeachTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Beach beach;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPABeaches");
				
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		beach = em.find(Beach.class, 1);
		
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		beach = null;
	}

	@Test
	void test_Beach_entity_mapping() {
		assertNotNull(beach);
		assertEquals("Panama City Beach", beach.getName());
	}

}
