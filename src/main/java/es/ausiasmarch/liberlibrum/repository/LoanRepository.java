package es.ausiasmarch.liberlibrum.repository;

import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import es.ausiasmarch.liberlibrum.entity.LoanEntity;

public interface LoanRepository extends JpaRepository<LoanEntity, Long>{
        Page<LoanEntity> findByUserId(Long id, Pageable pageable);

    @Query(value = "SELECT t.*,count(r.id) FROM Loan t, reply r WHERE t.id = r.id_Loan GROUP BY t.id ORDER BY COUNT(r.id) desc", nativeQuery = true)
    Page<LoanEntity> findLoansByRepliesNumberDesc(Pageable pageable);

    @Query(value = "SELECT t.*,count(r.id) FROM Loan t, reply r WHERE t.id = r.id_Loan and t.id_user=$1 GROUP BY t.id ORDER BY COUNT(r.id) desc", nativeQuery = true)
    Page<LoanEntity> findLoansByRepliesNumberDescFilterByUserId(Long userId, Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE Loan AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
