// package es.ausiasmarch.liberlibrum.entity;

// import jakarta.persistence.Entity;
// import jakarta.persistence.GeneratedValue;
// import jakarta.persistence.GenerationType;
// import jakarta.persistence.Id;
// import jakarta.persistence.Table;
// import jakarta.validation.constraints.NotBlank;
// import jakarta.validation.constraints.NotNull;
// import jakarta.validation.constraints.Size;

// @Entity
// @Table(name = "books")
// public class BookEntity {
//     @Id
//     @GeneratedValue(strategy = GenerationType.IDENTITY)
//     private Long idBook;

//     @NotBlank
//     @NotNull
//     @Size(min = 1, max = 100)
//     private String title;

//     @NotBlank
//     @NotNull
//     @Size(min = 1, max = 100)
//     private String author;

//     @NotBlank
//     @NotNull
//     @Size(min = 1, max = 100)
//     private String category;

//     public Long getIdBook() {
//         return idBook;
//     }

//     public String getTitle() {
//         return title;
//     }

//     public void setTitle(String title) {
//         this.title = title;
//     }

//     public String getAuthor() {
//         return author;
//     }

//     public void setAuthor(String author) {
//         this.author = author;
//     }

//     public String getCategory() {
//         return category;
//     }

//     public void setCategory(String category) {
//         this.category = category;
//     }

    
// }
