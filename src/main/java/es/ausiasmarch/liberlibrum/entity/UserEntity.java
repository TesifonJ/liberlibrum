package es.ausiasmarch.liberlibrum.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

/**
 * @author TesifonJ
 * Class used to manipulate an ODT, the password, id, books and loans attributes musn`t have setter, ONLY getter
 */
@Entity
@Table(name = "users")
public class UserEntity {
    /**
     * The id of an user in the DB
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * The name of the user 
     */
    @NotNull
    @NotBlank
    @Size(min = 3, max = 100)
    private String name;

    /**
     * The surname of the user
     */
    @NotNull
    @NotBlank
    @Size(min = 3, max = 100)
    private String surname;

    /**
     * The nickname of the user
     */
    @NotNull
    @NotBlank
    @Size(min=6, max=15)
    @Pattern(regexp = "^[a-zA-Z0-9]+$", message = "Username must be alphanumeric")
    private String username;

    /**
     * The email of the user
     */
    @Email
    @NotBlank
    private String email;

    /**
     * The hash of the password introduced by the user
     */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    @NotNull
    @NotBlank
    @Size(min = 64, max = 64)
    @Pattern(regexp = "^[a-fA-F0-9]+$", message = "Password must be hexadecimal")
    private String password;

    /**
     * The role of the user, true for Admin and False for normal user
     */
    private Boolean role;

    @OneToMany(mappedBy = "user", fetch = jakarta.persistence.FetchType.LAZY)
    private List<BookEntity> books;

    @OneToMany(mappedBy = "user", fetch = jakarta.persistence.FetchType.LAZY)
    private List<LoanEntity> loans;

    public UserEntity(){
        // booksArray
        // loansArray
    }

    /**
     * Constructor for a User
     * @param name the name of the user 
     * @param surname the surname of the user
     * @param username the username of the user
     * @param email the email of the user
     * @param password the hash of the user's password
     * @param role the role of the user
     */
    public UserEntity(String name, String surname, String username, String email, String password, Boolean role) {
        this.name = name;
        this.surname = surname;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getRole() {
        return role;
    }

    public void setRole(Boolean role) {
        this.role = role;
    }
    
    public int getNumberOfBooks(){
        return this.books.size();
    }

    public int getNumberOfLoans(){
        return this.loans.size();
    }
}
