package es.ausiasmarch.liberlibrum.repository;

import java.util.Optional;


import org.springframework.data.jpa.repository.JpaRepository;


import es.ausiasmarch.liberlibrum.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    Optional<UserEntity> findByUsername(String username);

    Optional<UserEntity> findByUsernameAndPassword(String username, String password);

//Native query para Loan y Book
}
