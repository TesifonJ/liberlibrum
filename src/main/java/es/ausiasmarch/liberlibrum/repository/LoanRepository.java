package es.ausiasmarch.liberlibrum.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import es.ausiasmarch.liberlibrum.entity.LoanEntity;

public interface LoanRepository extends JpaRepository<LoanEntity, Long>{
    Page<LoanEntity> findByUserId(Long id, Pageable pageable);

    Page<LoanEntity> findByBookId(Long id, Pageable pageable);

    @Query(value = "SELECT l.*,count(b.id) FROM loans l, books b WHERE l.id = b.id GROUP BY l.id ORDER BY COUNT(b.id) desc", nativeQuery = true)
    Page<LoanEntity> findBooksByLoanNumberDesc(Pageable pageable);

    @Query(value = "SELECT l.*,count(b.id) FROM loans l, books b WHERE l.id = b.id and l.id_user=$1 GROUP BY l.id ORDER BY COUNT(b.id) desc", nativeQuery = true)
    Page<LoanEntity> findBooksByLoanNumberDescFilterByUserId(Long userId, Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE loans AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
