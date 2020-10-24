package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class VideogameTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Videogame videogame;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("VideogamePU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		videogame = em.find(Videogame.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		videogame = null;
	}

	@Test
	void test_Videogame_entity_mapping() {
		assertNotNull(videogame);
		assertEquals("The Legend of Zelda: Majora's Mask", videogame.getTitle());
	}

}
