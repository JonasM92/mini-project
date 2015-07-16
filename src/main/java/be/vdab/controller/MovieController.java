package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Genre;
import be.vdab.domain.Movie;
import be.vdab.domain.Character;
import be.vdab.repository.ActorRepository;
import be.vdab.repository.CharacterRepository;
import be.vdab.repository.GenreRepository;
import be.vdab.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * Created by jeansmits on 10/07/15.
 */
@Controller
public class MovieController {
    @Autowired
    MovieRepository movieRepository;
    @Autowired
    GenreRepository genreRepository;
    @Autowired
    ActorRepository actorRepository;
    @Autowired
    CharacterRepository characterRepository;

    @RequestMapping("home")
    public String home() {
        return "home";
    }

    @RequestMapping("/")
    public String index() {
        return "redirect:/home";
    }

    //Movie detailed view
    @RequestMapping("home/movie")
    public String movie(Map<String, Object> model, @RequestParam("id") Integer id) {
        model.put("movie",movieRepository.findOne(id));
        model.put("characters",characterRepository.findAll());
        return "movies/movie";
    }
    //List of all movies. Can be sorted
    @RequestMapping("home/movies")
    public String movies(Map<String, Object> model, @RequestParam(value="sortby",required=false)String sort) {
        if (sort == null || !sort.equals("title")) {
            model.put("movies", movieRepository.findAll());
            return "movies/list";
        } else {
            model.put("movies", movieRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "title"))));
            return "movies/list";
        }
    }


    @RequestMapping("home/movie/create")
    public String form(Map<String, Object> model, @RequestParam(value = "id",required = false) Integer id) {
        if(id!=null)    {
            model.put("movie", movieRepository.findOne(id));
        } else {
            model.put("movie", new Movie());
        }
        return "movies/create";
    }

    @RequestMapping(value= "home/movie/addMovie", method = RequestMethod.POST)
    public String create(Movie movie, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {

            return "movies/create";
        } else {
            movieRepository.save(movie);
            return "redirect:/home/movies";
        }
    }

    @RequestMapping(value= "home/movie/remove")
    public String remove(@RequestParam("id") Integer id) {
        movieRepository.delete(id);
        return "redirect:/home/movies";
    }





    //Allows us to get all genres for a drop-down list
    @ModelAttribute(value = "genres")
    public List<Genre> genres(){
        List<Genre> genres = genreRepository.findAll();
        genres.add(new Genre("Other"));
        return genres;
    }

    @ModelAttribute(value = "actors")
    public List<Actor> actors(){
        List<Actor> actors = actorRepository.findAll();
        return actors;
    }

    @ModelAttribute(value= "characters")
    public List<Character> characters(){
        List<Character> characters = characterRepository.findAll();
        return characters;
    }
}
