package es.ausiasmarch.liberlibrum.api;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/book")
public class BookApi {
        //TODO: implementar metodos para crear, actualizar y eliminar usuario
}
