package es.ausiasmarch.liberlibrum.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jakarta.servlet.http.HttpServletRequest;

import es.ausiasmarch.liberlibrum.entity.BookEntity;
import es.ausiasmarch.liberlibrum.repository.BookRepository;

import es.ausiasmarch.liberlibrum.exception.ResourceNotFoundException;
import es.ausiasmarch.liberlibrum.helper.DataGenerationHelper;
@Service
public class BookService {
    @Autowired
    BookRepository oBookRepository;

    @Autowired
    HttpServletRequest oHttpServletRequest;

    @Autowired
    SessionService oSessionService;

    @Autowired
    UserService oUserService;

    public BookEntity get(Long id) {
        return oBookRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Book not found"));
    }

    public Page<BookEntity> getPage(Pageable oPageable, Long userId, Long bookId) {
        if (userId == 0) {
            if (bookId == 0) {
                return oBookRepository.findAll(oPageable);
            } else {
                return oBookRepository.findByUserId(userId, oPageable);
            }
        } else {
            return oBookRepository.findByUserId(userId, oPageable);
        }
    }

    public Page<BookEntity> getPageByLoansNumberDesc(Pageable oPageable, Long loanId) {
        if (loanId == 0) {
            return oBookRepository.findLoansByBooksNumberDesc(oPageable);
        } else {
            return oBookRepository.findLoansByBooksNumberDescFilterByUserId(loanId, oPageable);
        }
    }

    public Long create(BookEntity oBookEntity) {
        oSessionService.onlyAdminsOrUsers();
        oBookEntity.setId(null);        
        if (oSessionService.isUser()) {
            oBookEntity.setOwnerUser(oSessionService.getSessionUser());
            return oBookRepository.save(oBookEntity).getId();
        } else {
            return oBookRepository.save(oBookEntity).getId();
        }
    }

    public BookEntity update(BookEntity oBookEntityToSet) {
        BookEntity oBookEntityFromDatabase = this.get(oBookEntityToSet.getId());
        oSessionService.onlyAdminsOrUsersWithIisOwnData(oBookEntityFromDatabase.getOwnerUser().getId());
        if (oSessionService.isUser()) {
            oBookEntityToSet.setOwnerUser(oBookEntityFromDatabase.getOwnerUser());
            return oBookRepository.save(oBookEntityToSet);
        } else {
            return oBookRepository.save(oBookEntityToSet);
        }
    }

    public Long delete(Long id) {
        BookEntity oBookEntityFromDatabase = this.get(id);
        oSessionService.onlyAdminsOrUsersWithIisOwnData(oBookEntityFromDatabase.getOwnerUser().getId());
        oBookRepository.deleteById(id);
        return id;
    }

    public Long populate(Integer amount) {
        oSessionService.onlyAdmins();
        for (int i = 0; i < amount; i++) {
            String title = DataGenerationHelper.getRandomTitle();
            String author = DataGenerationHelper.getRandomAuthor();
            String category = DataGenerationHelper.getRandomCategory();

            

            oBookRepository.save(new BookEntity(title, author, category,new Random().nextBoolean(),oUserService.getOneRandom()));
        }
        return oBookRepository.count();
    }

    public BookEntity getOneRandom() {
        oSessionService.onlyAdmins();
        Pageable oPageable = PageRequest.of((int) (Math.random() * oBookRepository.count()), 1);
        return oBookRepository.findAll(oPageable).getContent().get(0);
    }

    @Transactional
    public Long empty() {
        oSessionService.onlyAdmins();
        oBookRepository.deleteAll();
        oBookRepository.resetAutoIncrement();
        oBookRepository.flush();
        return oBookRepository.count();
    }
}
