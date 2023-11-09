package es.ausiasmarch.liberlibrum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import es.ausiasmarch.liberlibrum.entity.LoanEntity;

public interface LoanRepository extends JpaRepository<LoanEntity, Long>{
    
}
