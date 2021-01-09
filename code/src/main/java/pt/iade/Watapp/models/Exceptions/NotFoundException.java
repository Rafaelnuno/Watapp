package pt.iade.Watapp.models.Exceptions;

import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class NotFoundException extends RuntimeException {
    
        private static final long serialVersionUID = 5405519104069955535L;
        public NotFoundException(String id, String elemType, String idName) {
        super(elemType +" with "+ idName+" "+ id+" not found.");
    }
}