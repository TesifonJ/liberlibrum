// package es.ausiasmarch.liberlibrum.service;

// import java.util.concurrent.ThreadLocalRandom;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
// import org.springframework.data.domain.Page;
// import org.springframework.stereotype.Service;

// import es.ausiasmarch.liberlibrum.entity.BookEntity;
// import es.ausiasmarch.liberlibrum.repository.BookRepository;
// import es.ausiasmarch.liberlibrum.repository.UserRepository;
// import jakarta.servlet.http.HttpServletRequest;
// import jakarta.transaction.Transactional;
// import es.ausiasmarch.liberlibrum.exception.ResourceNotFoundException;
// import es.ausiasmarch.liberlibrum.helper.DataGenerationHelper;
// @Service
// public class BookService {
//     @Autowired
//     BookRepository oBookRepository;
//     UserRepository oUserRepository;
    
//     HttpServletRequest oHttpServletRequest;
    
//     LoanService oLoanService;
//     UserService oUserService;
//     SessionService oSessionService;
    
//     public BookEntity get(Long id) {
//         return oBookRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Book not found"));
//     }

//     public Page<BookEntity> getPage(Pageable oPageable, Long userId, Long threadId) {
//         if (userId == 0) {
//             if (threadId == 0) {
//                 return oBookRepository.findAll(oPageable);
//             } else {
//                 return oBookRepository.findByThreadId(threadId, oPageable);
//             }
//         } else {
//             return oBookRepository.findByUserId(userId, oPageable);
//         }
//     }

//     public Long create(BookEntity oBookEntity) {
//         oSessionService.onlyAdminsOrUsers();
//         oBookEntity.setId(null);        
//         if (oSessionService.isUser()) {
//             oBookEntity.setUser(oSessionService.getSessionUser());
//             return oBookRepository.save(oBookEntity).getId();
//         } else {
//             return oBookRepository.save(oBookEntity).getId();
//         }
//     }

//     public BookEntity update(BookEntity oBookEntityToSet) {
//         BookEntity oBookEntityFromDatabase = this.get(oBookEntityToSet.getId());
//         oSessionService.onlyAdminsOrUsersWithIisOwnData(oBookEntityFromDatabase.getUser().getId());
//         if (oSessionService.isUser()) {
//             oBookEntityToSet.setUser(oSessionService.getSessionUser());
//             return oBookRepository.save(oBookEntityToSet);
//         } else {
//             return oBookRepository.save(oBookEntityToSet);
//         }
//     }

//     public Long delete(Long id) {
//         BookEntity oBookEntityFromDatabase = this.get(id);
//         oSessionService.onlyAdminsOrUsersWithIisOwnData(oBookEntityFromDatabase.getUser().getId());
//         oBookRepository.deleteById(id);
//         return id;
//     }

//     public Long populate(Integer amount) {
//         oSessionService.onlyAdmins();
//         for (int i = 0; i < amount; i++) {
//             oBookRepository.save(new BookEntity(DataGenerationHelper.getSpeech(1),
//                     DataGenerationHelper.getSpeech(ThreadLocalRandom.current().nextInt(5, 25)),
//                     oUserService.getOneRandom(), oThreadService.getOneRandom()));
//         }
//         return oBookRepository.count();
//     }

//     @Transactional
//     public Long empty() {
//         oSessionService.onlyAdmins();
//         oBookRepository.deleteAll();
//         oBookRepository.resetAutoIncrement();
//         oBookRepository.flush();
//         return oBookRepository.count();
//     }
// }
