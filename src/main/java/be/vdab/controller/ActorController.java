package be.vdab.controller;

import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by jeansmits on 13/07/15.
 */
@Controller
public class ActorController {
    @Autowired
    ActorRepository actorRepository;

    @RequestMapping("home/actor")
    public String actor(Map<String, Object> model, @RequestParam("id") Integer id) {
        model.put("actor",actorRepository.findOne(id));
        return "actors/actor";
    }
    @RequestMapping("home/actors")
    public String actors(Map<String, Object> model) {
        model.put("actors",actorRepository.findAll());
        return "actors/list";
    }

}
