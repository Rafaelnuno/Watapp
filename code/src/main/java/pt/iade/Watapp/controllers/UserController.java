package pt.iade.Watapp.controllers;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import pt.iade.Watapp.models.User;
import pt.iade.Watapp.models.Exceptions.NotFoundException;
import pt.iade.Watapp.repositories.UserRepository;


@RestController
@RequestMapping(path="/api/users")

public class UserController {
    
    private Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserRepository userRepository;

        @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
            public Iterable<User> getUsers() {
                logger.info("Sending all users");
                    return userRepository.findAll();
    }

        @GetMapping(path = "/{id}", produces= MediaType.APPLICATION_JSON_VALUE)
            public User getUser(@PathVariable int id) {
                logger.info("Sending User with id "+id);
                    Optional<User> _user = userRepository.findById(id);
                        if (_user.isEmpty()) 
                            throw new NotFoundException(""+id,"User","id");
                        else 
                            return _user.get();
    }

   /* @PostMapping(path = "", produces= MediaType.APPLICATION_JSON_VALUE)
    public User saveUser(@RequestBody User newUser) {
        logger.info("Saving User with name: "+newUser.getName());
        User user = userRepository.save(newUser);
        return user;
    }*/
    

}