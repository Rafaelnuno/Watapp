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

import pt.iade.Watapp.models.Tipo;
import pt.iade.Watapp.models.Exceptions.NotFoundException;
import pt.iade.Watapp.repositories.TipoRepository;

@RestController
@RequestMapping(path="/api/tipos")

public class TipoController {
    
    private Logger logger = LoggerFactory.getLogger(TipoController.class);
    @Autowired
    private TipoRepository tipoRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Tipo> getTipo() {
        logger.info("Sending all users");
            return tipoRepository.findAll();
}


@GetMapping(path = "/{id}",produces= MediaType.APPLICATION_JSON_VALUE)
    public Tipo getTipo(@PathVariable int id) {
            logger.info("Sending the moderator with id "+id);
        Optional<Tipo> _tipo=tipoRepository.findById(id);
            if (_tipo.isEmpty()) throw
                new NotFoundException(""+id,"Tipo","id");
            else 
                return _tipo.get() ;
        }

}

