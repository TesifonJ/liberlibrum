package es.ausiasmarch.liberlibrum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.ausiasmarch.liberlibrum.entity.UserEntity;
import es.ausiasmarch.liberlibrum.exception.ResourceNotFoundException;
import es.ausiasmarch.liberlibrum.repository.UserRepository;

@Service
public class UserService {
    @Autowired
    UserRepository oUserRepository;

    public UserEntity get(Long id){
        return oUserRepository.findById(id).orElseThrow();
    }
}
