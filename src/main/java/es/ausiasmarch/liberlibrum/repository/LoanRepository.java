// package es.ausiasmarch.liberlibrum.repository;

// import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
// import org.springframework.data.domain.Page;
// import org.springframework.data.jpa.repository.JpaRepository;
// import org.springframework.data.jpa.repository.Modifying;
// import org.springframework.data.jpa.repository.Query;

// import es.ausiasmarch.liberlibrum.entity.LoanEntity;

// public interface LoanRepository extends JpaRepository<LoanEntity, Long>{
//     Page<LoanEntity> findByUserId(Long id, Pageable pageable);

//     Page<LoanEntity> findByThreadId(Long id, Pageable pageable);

//     @Modifying
//     @Query(value = "ALTER TABLE reply AUTO_INCREMENT = 1", nativeQuery = true)
//     void resetAutoIncrement();
// }
