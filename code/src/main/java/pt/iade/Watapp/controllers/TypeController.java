package pt.iade.Watapp.controllers;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.Watapp.models.Type;
import pt.iade.Watapp.models.Exceptions.NotFoundException;
import pt.iade.Watapp.repositories.TypeRepository;

@RestController
@RequestMapping(path="/api/tipos")

public class TypeController {
    
    private Logger logger = LoggerFactory.getLogger(TypeController.class);
    @Autowired
    private TypeRepository typeRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Type> getTipo() {
        logger.info("Sending all types");
            return typeRepository.findAll();
}


@GetMapping(path = "/{id}",produces= MediaType.APPLICATION_JSON_VALUE)
    public Type getTipo(@PathVariable int id) {
            logger.info("Sending the moderator with id "+id);
        Optional<Type> _type=typeRepository.findById(id);
            if (_type.isEmpty()) throw
                new NotFoundException(""+id,"Tipo","id");
            else 
                return _type.get() ;
        }

}

