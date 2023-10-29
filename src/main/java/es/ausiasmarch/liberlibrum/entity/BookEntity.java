package es.ausiasmarch.liberlibrum.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "books")
public class BookEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idBook;

    @NotBlank
    @NotNull
    @Size(min = 1, max = 100)
    private String title;

    @NotBlank
    @NotNull
    @Size(min = 1, max = 100)
    private String author;

    @NotBlank
    @NotNull
    @Size(min = 1, max = 100)
    private String category;

    
}
