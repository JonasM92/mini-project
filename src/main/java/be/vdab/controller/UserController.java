package be.vdab.controller;

import be.vdab.domain.User;
import be.vdab.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import java.util.Map;

/**
 * Created by jeansmits on 13/07/15.
 */
@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping("home/user/registration")
    public String registerForm(Map<String, Object> model) {
        model.put("user",new User());
        return "users/register";
    }

    @RequestMapping(value= "home/user/addUser", method = RequestMethod.POST)
    public String create(User user) {
        userRepository.save(user);
        return "redirect:/home";
    }

    @RequestMapping(value= "home/user/login")
    public String loginForm(Map<String, Object> model) {
        model.put("user",new User());
        return "users/login";
    }

    @RequestMapping(value= "home/user/logout")
    public String logout(User user) {
        return "redirect:/home";
    }
}
