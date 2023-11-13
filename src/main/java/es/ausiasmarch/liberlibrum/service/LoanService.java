// package es.ausiasmarch.liberlibrum.service;

// import java.util.concurrent.ThreadLocalRandom;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
// import org.springframework.data.domain.Page;
// import org.springframework.data.domain.PageRequest;
// import org.springframework.data.jpa.repository.Modifying;
// import org.springframework.data.jpa.repository.Query;
// import org.springframework.stereotype.Service;

// import es.ausiasmarch.liberlibrum.entity.LoanEntity;
// import es.ausiasmarch.liberlibrum.entity.UserEntity;
// import es.ausiasmarch.liberlibrum.exception.ResourceNotFoundException;
// import es.ausiasmarch.liberlibrum.helper.DataGenerationHelper;
// import es.ausiasmarch.liberlibrum.repository.BookRepository;
// import es.ausiasmarch.liberlibrum.repository.LoanRepository;
// import es.ausiasmarch.liberlibrum.repository.UserRepository;
// import jakarta.servlet.http.HttpServletRequest;
// import jakarta.transaction.Transactional;

// @Service
// public class LoanService {
//     @Autowired
//     BookRepository oBookRepository;
//     UserRepository oUserRepository;
//     LoanRepository oLoanRepository;
    
//     LoanService oLoanService;
//     UserService oUserService;
//     BookService oBookService;  

//     SessionService oSessionService;

//     HttpServletRequest oHttpServletRequest;

//     public LoanEntity get(Long id) {
//         return oLoanRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Loan not found"));
//     }

//     public Page<LoanEntity> getPage(Pageable oPageable, Long userId, Long threadId) {
//         if (userId == 0) {
//             if (threadId == 0) {
//                 return oLoanRepository.findAll(oPageable);
//             } else {
//                 return oLoanRepository.findByThreadId(threadId, oPageable);
//             }
//         } else {
//             return oLoanRepository.findByUserId(userId, oPageable);
//         }
//     }

//     public Long create(LoanEntity oLoanEntity) {
//         oLoanEntity.setId(null);
//         String strJWTusername = oHttpServletRequest.getAttribute("username").toString();
//         UserEntity oUserEntityInSession = oUserRepository.findByUsername(strJWTusername)
//                 .orElseThrow(() -> new ResourceNotFoundException("User not found"));
//         if (Boolean.TRUE.equals(oUserEntityInSession.getRole())) {
//             oLoanEntity.setUser(oUserEntityInSession);
//             return oLoanRepository.save(oLoanEntity).getId();
//         } else {
//             return oLoanRepository.save(oLoanEntity).getId();
//         }
//     }

//     public LoanEntity update(LoanEntity oLoanEntity) {
//         oLoanEntity = oLoanRepository.findById(oLoanEntity.getId())
//                 .orElseThrow(() -> new ResourceNotFoundException("Loan not found"));
//         String strJWTusername = oHttpServletRequest.getAttribute("username").toString();
//         UserEntity oUserEntityInSession = oUserRepository.findByUsername(strJWTusername)
//                 .orElseThrow(() -> new ResourceNotFoundException("User not found"));
//         if (Boolean.TRUE.equals(oUserEntityInSession.getRole())) {
//             if (oLoanEntity.getUser().getId().equals(oUserEntityInSession.getId())) {
//                 return oLoanRepository.save(oLoanEntity);
//             } else {
//                 throw new ResourceNotFoundException("Unauthorized");
//             }
//         } else {
//             return oLoanRepository.save(oLoanEntity);
//         }
//     }

//     public Long delete(Long id) {
//         LoanEntity oLoanEntity = oLoanRepository.findById(id)
//                 .orElseThrow(() -> new ResourceNotFoundException("Loan not found"));
//         String strJWTusername = oHttpServletRequest.getAttribute("username").toString();
//         UserEntity oUserEntityInSession = oUserRepository.findByUsername(strJWTusername)
//                 .orElseThrow(() -> new ResourceNotFoundException("User not found"));
//         if (Boolean.TRUE.equals(oUserEntityInSession.getRole())) {
//             if (oLoanEntity.getUser().getId().equals(oUserEntityInSession.getId())) {
//                 oLoanRepository.deleteById(id);
//                 return id;
//             } else {
//                 throw new ResourceNotFoundException("Unauthorized");
//             }
//         } else {
//             oLoanRepository.deleteById(id);
//             return id;
//         }
//     }

//     public Long populate(Integer amount) {
//         String strJWTusername = oHttpServletRequest.getAttribute("username").toString();
//         UserEntity oUserEntityInSession = oUserRepository.findByUsername(strJWTusername)
//                 .orElseThrow(() -> new ResourceNotFoundException("User not found"));
//         if (Boolean.FALSE.equals(oUserEntityInSession.getRole())) {
//             for (int i = 0; i < amount; i++) {
//                 oLoanRepository.save(new LoanEntity(DataGenerationHelper.getSpeech(1),
//                         DataGenerationHelper.getSpeech(ThreadLocalRandom.current().nextInt(5, 25)),
//                         oUserService.getOneRandom(), oBookService.getOneRandom()));
//             }
//             return oLoanRepository.count();
//         } else {
//             throw new ResourceNotFoundException("Unauthorized");
//         }
//     }

//       public LoanEntity getOneRandom() {
//         oSessionService.onlyAdmins();
//         Pageable oPageable = PageRequest.of((int) (Math.random() * oBookRepository.count()), 1);
//         return oBookRepository.findAll(oPageable).getContent().get(0);
//     }

//     @Transactional
//     public Long empty() {
//         String strJWTusername = oHttpServletRequest.getAttribute("username").toString();
//         UserEntity oUserEntityInSession = oUserRepository.findByUsername(strJWTusername)
//                 .orElseThrow(() -> new ResourceNotFoundException("User not found"));
//         if (Boolean.FALSE.equals(oUserEntityInSession.getRole())) {
//             oLoanRepository.deleteAll();
//             oLoanRepository.resetAutoIncrement();
//             oLoanRepository.flush();
//             return oLoanRepository.count();
//         } else {
//             throw new ResourceNotFoundException("Unauthorized");
//         }
//     }
// }
