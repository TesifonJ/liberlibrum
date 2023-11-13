package es.ausiasmarch.liberlibrum.api;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import es.ausiasmarch.liberlibrum.entity.LoanEntity;
import es.ausiasmarch.liberlibrum.service.LoanService;


@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/loan")
public class LoanApi {
    @Autowired
    LoanService oLoanService;

    @GetMapping("/{id}")
    public ResponseEntity<LoanEntity> get(@PathVariable("id") Long id) {
        return ResponseEntity.ok(oLoanService.get(id));
    }

    @PostMapping("")
    public ResponseEntity<Long> create(@RequestBody LoanEntity oLoanEntity) {
        return ResponseEntity.ok(oLoanService.create(oLoanEntity));
    }

    @PutMapping("")
    public ResponseEntity<LoanEntity> update(@RequestBody LoanEntity oLoanEntity) {
        return ResponseEntity.ok(oLoanService.update(oLoanEntity));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Long> delete(@PathVariable("id") Long id) {
        return ResponseEntity.ok(oLoanService.delete(id));
    }

    @GetMapping("")
    public ResponseEntity<Page<LoanEntity>> getPage(Pageable oPageable,
            @RequestParam(value = "user", defaultValue = "0", required = false) Long userId, @RequestParam(value = "book", defaultValue = "0", required = false) Long bookId) {
        return ResponseEntity.ok(oLoanService.getPage(oPageable, userId, bookId));
    }

    @PostMapping("/populate/{amount}")
    public ResponseEntity<Long> populate(@PathVariable("amount") Integer amount) {
        return ResponseEntity.ok(oLoanService.populate(amount));
    }

    @DeleteMapping("/empty")
    public ResponseEntity<Long> empty() {
        return ResponseEntity.ok(oLoanService.empty());
    }

    @GetMapping("/byBooksNumberDesc")
    public ResponseEntity<Page<LoanEntity>> getPageByBooksNumberDesc(Pageable oPageable, @RequestParam(value = "user", defaultValue = "0", required = false) Long userId, @RequestParam(value = "book", defaultValue = "0", required = false) Long bookId) {
        return ResponseEntity.ok(oLoanService.getPageByBooksNumberDesc(oPageable, bookId));
    }}
