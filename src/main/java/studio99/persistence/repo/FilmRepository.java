package studio99.persistence.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import studio99.persistence.entity.Film;

public interface FilmRepository extends JpaRepository<Film, Integer> {

	
	
}
