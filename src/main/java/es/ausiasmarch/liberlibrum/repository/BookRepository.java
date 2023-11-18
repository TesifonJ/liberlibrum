package es.ausiasmarch.liberlibrum.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import es.ausiasmarch.liberlibrum.entity.BookEntity;

public interface BookRepository extends JpaRepository<BookEntity, Long>{

    Page<BookEntity> findByUserId(Long id, Pageable pageable);



    @Query(value = "SELECT b.*,count(l.id) FROM books b, loans l WHERE b.id = l.book_id GROUP BY b.id ORDER BY COUNT(l.id) desc", nativeQuery = true)
    Page<BookEntity> findLoansByBooksNumberDesc(Pageable pageable);

    @Query(value = "SELECT b.*,count(l.id) FROM books b, loans l WHERE b.id = l.book_id and b.owner_id=$1 GROUP BY b.id ORDER BY COUNT(b.id) desc", nativeQuery = true)
    Page<BookEntity> findLoansByBooksNumberDescFilterByUserId(Long ownerId, Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE books AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
