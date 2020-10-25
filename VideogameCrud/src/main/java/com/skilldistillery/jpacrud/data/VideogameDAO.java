package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Videogame;

public interface VideogameDAO {

	public Videogame findVideogameById(int id);
	public List<Videogame> findVideogames();
	public Boolean deleteVideogame(int id);
	public Videogame updateVideogame(int id, Videogame videogame);
	public Videogame createVideogame(Videogame videogame);
	
}
