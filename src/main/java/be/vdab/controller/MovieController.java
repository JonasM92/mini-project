package be.vdab.controller;

import be.vdab.domain.Movie;
import be.vdab.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

    @RequestMapping("home")
    public String home() {
        return "home";
    }


    @RequestMapping("home/movie")
    public String film(Map<String, Object> model, @RequestParam("id") Integer id) {
        model.put("movie",movieRepository.findOne(id));
        return "movies/movie";
    }
    @RequestMapping("home/movies")
    public String films(Map<String, Object> model) {
        model.put("movies",movieRepository.findAll());
        return "movies/list";
    }

}