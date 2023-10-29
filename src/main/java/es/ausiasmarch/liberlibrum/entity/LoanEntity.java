package es.ausiasmarch.liberlibrum.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "loans")
public class LoanEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @NotNull
    private UserEntity user;

    @NotBlank
    @NotNull
    private BookEntity book;

    @NotBlank
    @NotNull
    @Size(min = 1, max = 100)
    private LocalDate loanDate;
    
    @NotBlank
    @NotNull
    @Size(min = 1, max = 100)
    private LocalDate dueDate;


}
