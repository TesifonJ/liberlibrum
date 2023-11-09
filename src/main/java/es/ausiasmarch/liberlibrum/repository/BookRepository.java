package es.ausiasmarch.liberlibrum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import es.ausiasmarch.liberlibrum.entity.BookEntity;

public interface BookRepository extends JpaRepository<BookEntity, Long>{
    
}
