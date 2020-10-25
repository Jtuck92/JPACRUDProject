package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Videogame;

@Transactional
public class VideogameDAOImpl implements VideogameDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Videogame findVideogameById(int id) {
		return em.find(Videogame.class, id);
	}

	@Override
	public List<Videogame> findVideogames() {
		String jpql = "SELECT v FROM Videogame v";
		return em.createQuery(jpql, Videogame.class).getResultList();
	}

	@Override
	public Boolean deleteVideogame(int id) {

		try {
			Videogame videogame = em.find(Videogame.class, id);
			em.remove(videogame);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Videogame updateVideogame(int id, Videogame videogame) {
		Videogame videogameBeingUpdated = em.find(Videogame.class, id);
		
		videogameBeingUpdated.setTitle(videogame.getTitle());
				
		return videogame;
	}

	@Override
	public Videogame createVideogame(Videogame videogame) {
		em.persist(videogame);
		return videogame;
	}

}
