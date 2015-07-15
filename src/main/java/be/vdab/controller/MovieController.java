package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Genre;
import be.vdab.domain.Movie;
import be.vdab.repository.ActorRepository;
import be.vdab.repository.GenreRepository;
import be.vdab.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
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

    @RequestMapping("home")
    public String home() {
        return "home";
    }


    @RequestMapping("home/movie")
    public String movie(Map<String, Object> model, @RequestParam("id") Integer id) {
        model.put("movie",movieRepository.findOne(id));
        return "movies/movie";
    }
    @RequestMapping("home/movies")
    public String movies(Map<String, Object> model) {
        model.put("movies",movieRepository.findAll());
        return "movies/list";
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
}
