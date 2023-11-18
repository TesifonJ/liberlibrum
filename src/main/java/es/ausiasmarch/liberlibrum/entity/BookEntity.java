package es.ausiasmarch.liberlibrum.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "books")
public class BookEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @NotNull
    @Size(min = 1, max = 100)
    private String title;

    @NotBlank
    @NotNull
    @Size(min = 1, max = 100)
    private String author;

    @NotBlank
    @NotNull
    @Size(min = 1, max = 100)
    private String category;

    @NotNull
    private Boolean available;

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private UserEntity user;

    @OneToMany(mappedBy = "book", fetch = jakarta.persistence.FetchType.LAZY)
    private List<LoanEntity> numberOfLoans;

    public BookEntity() {
        numberOfLoans = new ArrayList<>();
    }

    public BookEntity(Long id, String title, String author, String category, UserEntity user) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.category = category;
        this.user = user;
    }

     public BookEntity(String title, String author, String category, Boolean available,UserEntity oneRandom) {
        this.title = title;
        this.author = author;
        this.category = category;
        this.user = oneRandom;
        this.available = available;
    }

    public UserEntity getOwnerUser() {
        return user;
    }

    public void setOwnerUser(UserEntity user) {
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getLoans(){
        return numberOfLoans.size();
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
}
