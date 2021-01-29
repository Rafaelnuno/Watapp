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
import pt.iade.Watapp.models.views.NewsView;
import pt.iade.Watapp.repositories.NewsRepository;



@RestController
@RequestMapping(path="/api/news")

public class NewsController {
    
    private Logger logger = LoggerFactory.getLogger(NewsController.class);

    @Autowired
    private NewsRepository newsRepository;

        @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
            public Iterable<NewsView> getNews() {
                logger.info("Sending all news");
                    return newsRepository.findAllShort();
    }
                //retorna as noticias enviadas de qualquer utilizador para o historico do moderador
                //(usado no historic.js no load news)


        @GetMapping(path = "/{id}/users", produces = MediaType.APPLICATION_JSON_VALUE)
            public Iterable<NewsView> getUserNews(@PathVariable int id) {
                logger.info("Sending all news of a user"+id);
                    return newsRepository.findUserNews(id);
    }
                //filtra as noticias por utilizador para o historico do moderador so as enviadas
                //(usado no historic.js na filtragem de users)

                
        @GetMapping(path = "/recentes", produces = MediaType.APPLICATION_JSON_VALUE)
            public Iterable<NewsView> getNewsRecent() {
                logger.info("Sending the recent news");
                    return newsRepository.findNewsRecent();
    }
                //retorna as noticias aceites de todos utilizadores mais recentes neste caso 6 delas 
                //(usado no listanews.js)


        @GetMapping(path = "/{id}", produces= MediaType.APPLICATION_JSON_VALUE)
            public News getNews(@PathVariable int id) {
                logger.info("Sending the news with id "+id);
                    Optional<News> _news = newsRepository.findById(id);
                    if (_news.isEmpty()) 
                        throw new NotFoundException(""+id,"News","id");
                    else 
                    return _news.get();
    }
                //mostra mais detalhe sobre uma noticia em especifico dai o id pois e o da noticia em que clicamos
                //(esta a ser usadas no js onde tem detail)


        @GetMapping(path = "/{id}/state", produces = MediaType.APPLICATION_JSON_VALUE)
            public Iterable<NewsView> getStateNews(@PathVariable int id) {
                logger.info("Sending all news of a state"+id);
                    return newsRepository.findStateNews(id);
    }
                //filtra os estado das noticias para o historico do utilizador neste caso a Ines
                //(escolher o estado enviado,aceite ou rejeitado) 
                //usado no historicuser.js na filtragem dos estados)

}