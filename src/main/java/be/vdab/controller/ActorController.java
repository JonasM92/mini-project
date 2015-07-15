package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @RequestMapping("home/actor/create")
    public String form(Map<String, Object> model, @RequestParam(value = "id",required = false) Integer id) {
        if(id!=null)    {
            model.put("actor", actorRepository.findOne(id));
        } else {
            model.put("actor", new Actor());
        }
        return "actors/add";
    }

    @RequestMapping(value= "home/actor/addActor", method = RequestMethod.POST)
    public String create(Actor actor) {
        actorRepository.save(actor);
        return "redirect:/home/actors";
    }

    @RequestMapping(value= "home/actor/remove")
    public String remove(@RequestParam("id") Integer id) {
        actorRepository.delete(id);
        return "redirect:/home/actors";
    }

}
