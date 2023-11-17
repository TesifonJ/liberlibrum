package es.ausiasmarch.liberlibrum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jakarta.servlet.http.HttpServletRequest;

import es.ausiasmarch.liberlibrum.entity.UserEntity;
import es.ausiasmarch.liberlibrum.exception.ResourceNotFoundException;
import es.ausiasmarch.liberlibrum.helper.DataGenerationHelper;
import es.ausiasmarch.liberlibrum.repository.UserRepository;

@Service
public class UserService {

    private static final String LIBERLIBRUM_DEFAULT_PASSWORD = "e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e";

    @Autowired
    UserRepository oUserRepository;

    @Autowired
    HttpServletRequest oHttpServletRequest;

    @Autowired
    SessionService oSessionService;

    public UserEntity get(Long id) {
        return oUserRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }

    public Page<UserEntity> getPage(Pageable oPageable) {
        oSessionService.onlyAdmins();
        return oUserRepository.findAll(oPageable);
    }

    public UserEntity getByUsername(String username) {
        return oUserRepository.findByUsername(username)
                .orElseThrow(() -> new ResourceNotFoundException("User not found by username"));
    }

    public Page<UserEntity> getPageByLoanNumberDesc(Pageable oPageable) {
        return oUserRepository.findUsersByLoansNumberDescFilter(oPageable);
    }

    public Long create(UserEntity oUserEntity) {
        oSessionService.onlyAdmins();
        oUserEntity.setId(null);
        oUserEntity.setPassword(oUserEntity.getPassword());
        return oUserRepository.save(oUserEntity).getId();
    }

    public UserEntity update(UserEntity oUserEntityToSet) {
        UserEntity oUserEntityFromDatabase = this.get(oUserEntityToSet.getId());
        oSessionService.onlyAdminsOrUsersWithIisOwnData(oUserEntityFromDatabase.getId());
        if (oSessionService.isUser()) {
            if(oUserEntityToSet.getPassword() == null){
                oUserEntityToSet.setPassword(LIBERLIBRUM_DEFAULT_PASSWORD);
            }
            oUserEntityToSet.setPassword(oUserEntityFromDatabase.getPassword());
            oUserEntityToSet.setRole(oUserEntityFromDatabase.getRole());
            return oUserRepository.save(oUserEntityToSet);
        } else {
            oUserEntityToSet.setPassword(LIBERLIBRUM_DEFAULT_PASSWORD);
            return oUserRepository.save(oUserEntityToSet);
        }
    }

    public Long delete(Long id) {
        oSessionService.onlyAdmins();
        oUserRepository.deleteById(id);
        return id;
    }

    public UserEntity getOneRandom() {
        oSessionService.onlyAdmins();
        Pageable oPageable = PageRequest.of((int) (Math.random() * oUserRepository.count()), 1);
        return oUserRepository.findAll(oPageable).getContent().get(0);
    }

    public Long populate(Integer amount) {
        oSessionService.onlyAdmins();
        for (int i = 0; i < amount; i++) {
            String name = DataGenerationHelper.getRadomName();
            String surname = DataGenerationHelper.getRadomSurname();
            String email = name.substring(0, 3) + surname.substring(0, 3) + i + "@ausiasmarch.net";
            String username = DataGenerationHelper
                    .doNormalizeString(name.substring(0, 3) + surname.substring(1, 3) + i);

            oUserRepository.save(new UserEntity(name, surname, username, email, LIBERLIBRUM_DEFAULT_PASSWORD, true));
        }
        return oUserRepository.count();
    }

    @Transactional
    public Long empty() {
        oSessionService.onlyAdmins();
        oUserRepository.deleteAll();
        oUserRepository.resetAutoIncrement();
        UserEntity oUserEntity1 = new UserEntity("Winston",  "Scott", "winscott", "winscott@continental.com",
                LIBERLIBRUM_DEFAULT_PASSWORD, false);
        oUserRepository.save(oUserEntity1);
        oUserEntity1 = new UserEntity("John",  "Wick", "babayaga", "babayaga@continental.com",
                LIBERLIBRUM_DEFAULT_PASSWORD, true);
        oUserRepository.save(oUserEntity1);
        return oUserRepository.count();
    }

}
