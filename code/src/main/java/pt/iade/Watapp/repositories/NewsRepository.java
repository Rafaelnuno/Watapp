package pt.iade.Watapp.repositories;

import org.springframework.data.repository.CrudRepository;
import pt.iade.Watapp.models.News;


public interface NewsRepository extends CrudRepository<News, Integer> {

}