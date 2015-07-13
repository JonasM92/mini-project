package be.vdab.controller;

import be.vdab.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by jeansmits on 13/07/15.
 */
@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping("home/register")
    public String form(Map<String, Object> model) {
        return "user/registration";
    }
}
