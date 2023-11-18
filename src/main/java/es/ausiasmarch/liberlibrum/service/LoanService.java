package es.ausiasmarch.liberlibrum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jakarta.servlet.http.HttpServletRequest;

import es.ausiasmarch.liberlibrum.entity.LoanEntity;
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

    public Page<LoanEntity> getPage(Pageable oPageable, Long userId, Long BookId) {
        if (userId == 0) {
            if (BookId == 0) {
                return oLoanRepository.findAll(oPageable);
            } else {
                return oLoanRepository.findByBookId(BookId, oPageable);
            }
        } else {
            return oLoanRepository.findByUserId(userId, oPageable);
        }
    }

    public Page<LoanEntity> getPageByBooksNumberDesc(Pageable oPageable, Long userId) {
        if (userId == 0) {
            return oLoanRepository.findLoansByBooksNumberDesc(oPageable);
        } else {
            return oLoanRepository.findLoansByBooksNumberDescFilterByUserId(userId, oPageable);
        }
    }

    public Long create(LoanEntity oLoanEntity) {
        oSessionService.onlyAdminsOrUsers();
        oLoanEntity.setId(null);
        if (oSessionService.isUser()) {
            oLoanEntity.setUser(oSessionService.getSessionUser());
            return oLoanRepository.save(oLoanEntity).getId();
        } else {
            if (oLoanEntity.getUser().getId() == null || oLoanEntity.getUser().getId() == 0) {
                oLoanEntity.setUser(oSessionService.getSessionUser());
            }
            return oLoanRepository.save(oLoanEntity).getId();
        }
    }

    public LoanEntity update(LoanEntity oLoanEntityToSet) {
        LoanEntity oLoanEntityFromDatabase = this.get(oLoanEntityToSet.getId());
        oSessionService.onlyAdminsOrUsersWithIisOwnData(oLoanEntityFromDatabase.getUser().getId());
        oLoanEntityToSet.setCreationDate(oLoanEntityFromDatabase.getCreationDate());
        if (oSessionService.isUser()) {
            oLoanEntityToSet.setUser(oSessionService.getSessionUser());
            return oLoanRepository.save(oLoanEntityToSet);
        } else {
            return oLoanRepository.save(oLoanEntityToSet);
        }
    }

    public Long delete(Long id) {
        LoanEntity oLoanEntityFromDatabase = this.get(id);
        oSessionService.onlyAdminsOrUsersWithIisOwnData(oLoanEntityFromDatabase.getUser().getId());
        oLoanRepository.deleteById(id);
        return id;
    }

    public Long populate(Integer amount) {
        oSessionService.onlyAdmins();
        for (int i = 0; i < amount; i++) {
            oLoanRepository.save(new LoanEntity(oUserService.getOneRandom(), oBookService.getOneRandom(), DataGenerationHelper.getRandomDate(),DataGenerationHelper.getRandomDate()));
        }
        return oLoanRepository.count();
    }

    @Transactional
    public Long empty() {
        oSessionService.onlyAdmins();
        oLoanRepository.deleteAll();
        oLoanRepository.resetAutoIncrement();
        oLoanRepository.flush();
        return oLoanRepository.count();
    }


}
