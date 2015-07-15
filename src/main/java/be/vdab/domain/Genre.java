package be.vdab.domain;

import javax.persistence.*;

/**
 * Created by jeansmits on 14/07/15.
 */
@Entity
public class Genre {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;
    public String genre;

    @Transient
    @OneToMany(mappedBy = "id")
    public Movie movie;

    @Override
    public String toString() {
        return this.genre;
    }

    public Genre() {
    }

    public Genre(String genre) {
        this.genre = genre;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getGenre() {return genre;}
    public void setGenre(String genre) {this.genre = genre;}
    public Movie getMovie() {return movie;}
    public void setMovie(Movie movie) {this.movie = movie;}
}
