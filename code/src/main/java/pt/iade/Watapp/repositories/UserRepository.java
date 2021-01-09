package pt.iade.Watapp.repositories;



import org.springframework.data.repository.CrudRepository;
import pt.iade.Watapp.models.User;


public interface UserRepository extends CrudRepository<User, Integer> {

	
}