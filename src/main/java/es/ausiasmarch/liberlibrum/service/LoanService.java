package es.ausiasmarch.liberlibrum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jakarta.servlet.http.HttpServletRequest;

import es.ausiasmarch.liberlibrum.entity.LoanEntity;
import es.ausiasmarch.liberlibrum.entity.UserEntity;
import es.ausiasmarch.liberlibrum.exception.ResourceNotFoundException;
import es.ausiasmarch.liberlibrum.helper.DataGenerationHelper;
import es.ausiasmarch.liberlibrum.repository.BookRepository;
import es.ausiasmarch.liberlibrum.repository.LoanRepository;
import es.ausiasmarch.liberlibrum.repository.UserRepository;

@Service
public class LoanService {
    @Autowired
    BookRepository oBookRepository;
    @Autowired
    UserRepository oUserRepository;
    @Autowired
    LoanRepository oLoanRepository;
    
    @Autowired
    UserService oUserService;

    @Autowired
    BookService oBookService;  


    @Autowired
    SessionService oSessionService;

    @Autowired
    HttpServletRequest oHttpServletRequest;

    public LoanEntity get(Long id) {
        return oLoanRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Loan not found"));
    }

    public Page<LoanEntity> getPage(Pageable oPageable, Long userId, Long bookId) {
        if (userId == 0) {
            if (bookId == 0) {
                return oLoanRepository.findAll(oPageable);
            } else {
                return oLoanRepository.findByBookId(bookId, oPageable);
            }
        } else {
            return oLoanRepository.findByUserId(userId, oPageable);
        }
    }

    public Long create(LoanEntity oLoanEntity) {
        oLoanEntity.setId(null);
        String strJWTusername = oHttpServletRequest.getAttribute("username").toString();
        UserEntity oUserEntityInSession = oUserRepository.findByUsername(strJWTusername)
                .orElseThrow(() -> new ResourceNotFoundException("User not found"));
        if (Boolean.TRUE.equals(oUserEntityInSession.getRole())) {
            oLoanEntity.setUser(oUserEntityInSession);
            return oLoanRepository.save(oLoanEntity).getId();
        } else {
            return oLoanRepository.save(oLoanEntity).getId();
        }
    }

    public LoanEntity update(LoanEntity oLoanEntity) {
        oLoanEntity = oLoanRepository.findById(oLoanEntity.getId())
                .orElseThrow(() -> new ResourceNotFoundException("Loan not found"));
        String strJWTusername = oHttpServletRequest.getAttribute("username").toString();
        UserEntity oUserEntityInSession = oUserRepository.findByUsername(strJWTusername)
                .orElseThrow(() -> new ResourceNotFoundException("User not found"));
        if (Boolean.TRUE.equals(oUserEntityInSession.getRole())) {
            if (oLoanEntity.getUser().getId().equals(oUserEntityInSession.getId())) {
                return oLoanRepository.save(oLoanEntity);
            } else {
                throw new ResourceNotFoundException("Unauthorized");
            }
        } else {
            return oLoanRepository.save(oLoanEntity);
        }
    }

    public Long delete(Long id) {
        //LoanEntity oLoanEntityFromDatabase = this.get(id);
        oSessionService.onlyAdmins();
        oLoanRepository.deleteById(id);
        return id;
    }

    public Long populate(Integer amount) {
        oSessionService.onlyAdmins();
        for (int i = 0; i < amount; i++) {
           oLoanRepository.save(new LoanEntity(oUserService.getOneRandom(), oBookService.getOneRandom()));
        }
        return oLoanRepository.count();
    }

      public LoanEntity getOneRandom() {
        oSessionService.onlyAdmins();
        Pageable oPageable = PageRequest.of((int) (Math.random() * oLoanRepository.count()), 1);
        return oLoanRepository.findAll(oPageable).getContent().get(0);
    }

    public Page<LoanEntity> getPageByBooksNumberDesc(Pageable oPageable, Long userId) {
        if (userId == 0) {
            return oLoanRepository.findBooksByLoanNumberDesc(oPageable);
        } else {
            return oLoanRepository.findBooksByLoanNumberDescFilterByUserId(userId, oPageable);
        }
    }

    @Transactional
    public Long empty() {
        String strJWTusername = oHttpServletRequest.getAttribute("username").toString();
        UserEntity oUserEntityInSession = oUserRepository.findByUsername(strJWTusername)
                .orElseThrow(() -> new ResourceNotFoundException("User not found"));
        if (Boolean.FALSE.equals(oUserEntityInSession.getRole())) {
            oLoanRepository.deleteAll();
            oLoanRepository.resetAutoIncrement();
            oLoanRepository.flush();
            return oLoanRepository.count();
        } else {
            throw new ResourceNotFoundException("Unauthorized");
        }
    }
}
