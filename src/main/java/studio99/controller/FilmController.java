package studio99.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import studio99.persistence.entity.Film;
import studio99.persistence.repo.FilmRepository;

@RestController
@RequestMapping("api/film")
public class FilmController {

	@Autowired
	FilmRepository filmRepo;
	
	@GetMapping
	@ResponseBody
	List<Film> findAll(){
		return filmRepo.findAll();
	}

	@PostMapping
	@ResponseBody
	public Film createFilm(@RequestBody Film film) {
		return filmRepo.save(film);
	}
}
