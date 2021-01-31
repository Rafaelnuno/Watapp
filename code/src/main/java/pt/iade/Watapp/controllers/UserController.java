package pt.iade.Watapp.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.Watapp.models.News;
import pt.iade.Watapp.models.views.AddNewsView;
import pt.iade.Watapp.models.views.NewsView;
import pt.iade.Watapp.repositories.NewsRepository;
import pt.iade.Watapp.repositories.UserRepository;

@RestController
@RequestMapping(path="/api/users")

public class UserController {
    
    private Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private NewsRepository newsRepository;

        @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
            public Iterable<NewsView> getUsers() {
                logger.info("Sending  the news of a specific user");
                    return userRepository.findshortUser();
    }
                //mostra todas as noticias enviadas, aceites e rejeitadas neste caso da Ines para o historico do utilizador 
                //(usado no historicuser.js no loadnews)


        @PostMapping(path = "/news", produces= MediaType.APPLICATION_JSON_VALUE)
            public int saveNews( @RequestBody AddNewsView historic) {
                logger.info("Saving the news of a user with id: ");
                logger.info(historic.toString());
                    News news = newsRepository.save(historic.getNews());
                        historic.setNews(news);
                        historic.setEstn_id_e(1);//significa que a noticia ja vai como enviada
                logger.info(historic.toString());
                        return newsRepository.saveNews(historic);
    }   
                //guarda uma noticia feita por qualque utilizador 
                //(usado no addnews.js)

}