package es.ausiasmarch.liberlibrum.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import es.ausiasmarch.liberlibrum.entity.BookEntity;

public interface BookRepository extends JpaRepository<BookEntity, Long>{

    Page<BookEntity> findByUserId(Long id, Pageable pageable);

    Page<BookEntity> findByLoanId(Long id, Pageable pageable);

    @Query(value = "SELECT b.*,count(l.id) FROM books b, loans l WHERE b.id = l.id_Book GROUP BY b.id ORDER BY COUNT(l.id) desc", nativeQuery = true)
    Page<BookEntity> findLoansByBooksNumberDesc(Pageable pageable);

    @Query(value = "SELECT b.*,count(l.id) FROM books b, loans l WHERE b.id = l.id_Book and b.id_user=$1 GROUP BY b.id ORDER BY COUNT(b.id) desc", nativeQuery = true)
    Page<BookEntity> findLoansByBooksNumberDescFilterByUserId(Long userId, Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE books AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
