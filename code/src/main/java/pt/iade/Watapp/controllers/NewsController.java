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

import pt.iade.Watapp.models.News;
import pt.iade.Watapp.models.Exceptions.NotFoundException;
import pt.iade.Watapp.repositories.NewsRepository;



@RestController
@RequestMapping(path="/api/news")

public class NewsController {
    
    private Logger logger = LoggerFactory.getLogger(NewsController.class);

    @Autowired
    private NewsRepository NewsRepository;

        @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
            public Iterable<News> getNews() {
                logger.info("Sending all news");
                    return NewsRepository.findAll();
    }

    @GetMapping(path = "/{id}", produces= MediaType.APPLICATION_JSON_VALUE)
    public News getNews(@PathVariable int id) {
        logger.info("Sending the news with id "+id);
            Optional<News> _news = NewsRepository.findById(id);
                if (_news.isEmpty()) 
                    throw new NotFoundException(""+id,"News","id");
                else 
                    return _news.get();
    }


}