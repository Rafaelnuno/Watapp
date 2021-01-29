package pt.iade.Watapp.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.Watapp.models.views.NewsView;
import pt.iade.Watapp.repositories.CategoryRepository;

@RestController
@RequestMapping(path="/api/categorias")

public class CategoryController {

    private Logger logger = LoggerFactory.getLogger(CategoryController.class);

    @Autowired
    private CategoryRepository categoryRepository;

    @GetMapping(path = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
             public Iterable<NewsView> getCategoryNews(@PathVariable int id) {
                    logger.info("Sending all categorys of a category " + id);
                        return categoryRepository.findCategoryNews(id);
}
                    //faz a filtragem das categorias isto no historico do moderador das noticias que foram so enviadas 
                    //de qualquer utilizador
                    //(usado no historic.js na filtragem de categoria)

}

