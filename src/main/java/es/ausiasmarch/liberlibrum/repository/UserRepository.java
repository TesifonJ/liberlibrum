package es.ausiasmarch.liberlibrum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import es.ausiasmarch.liberlibrum.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    
}
