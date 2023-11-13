// package es.ausiasmarch.liberlibrum.api;
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
// import org.springframework.data.domain.Page;
// import org.springframework.http.ResponseEntity;
// import org.springframework.web.bind.annotation.CrossOrigin;
// import org.springframework.web.bind.annotation.DeleteMapping;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.PutMapping;
// import org.springframework.web.bind.annotation.RequestBody;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.bind.annotation.RestController;

// import es.ausiasmarch.liberlibrum.entity.BookEntity;

// @CrossOrigin(origins = "*", maxAge = 3600)
// @RestController
// @RequestMapping("/book")
// public class BookApi {
//     @Autowired
//     BookService oBookService;

//     @GetMapping("/{id}")
//     public ResponseEntity<BookEntity> get(@PathVariable("id") Long id) {
//         return ResponseEntity.ok(oBookService.get(id));
//     }

//     @PostMapping("")
//     public ResponseEntity<Long> create(@RequestBody BookEntity oBookEntity) {
//         return ResponseEntity.ok(oBookService.create(oBookEntity));
//     }

//     @PutMapping("")
//     public ResponseEntity<BookEntity> update(@RequestBody BookEntity oBookEntity) {
//         return ResponseEntity.ok(oBookService.update(oBookEntity));
//     }

//     @DeleteMapping("/{id}")
//     public ResponseEntity<Long> delete(@PathVariable("id") Long id) {
//         return ResponseEntity.ok(oBookService.delete(id));
//     }

//     @GetMapping("")
//     public ResponseEntity<Page<BookEntity>> getPage(Pageable oPageable,
//             @RequestParam(value = "user", defaultValue = "0", required = false) Long userId,
//             @RequestParam(value = "thread", defaultValue = "0", required = false) Long threadId) {
//         return ResponseEntity.ok(oBookService.getPage(oPageable, userId, threadId));
//     }

//     @PostMapping("/populate/{amount}")
//     public ResponseEntity<Long> populate(@PathVariable("amount") Integer amount) {
//         return ResponseEntity.ok(oBookService.populate(amount));
//     }

//     @DeleteMapping("/empty")
//     public ResponseEntity<Long> empty() {
//         return ResponseEntity.ok(oBookService.empty());
//     }
// }
