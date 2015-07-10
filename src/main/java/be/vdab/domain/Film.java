package be.vdab.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.List;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    public String title;
    public List<Actor> cast;

    public int length;

    public Director director;
    public String summary;
    public String poster;
    public String genre;
    public int rating;
    public String trailer;

    public Film(String title, List<Actor> cast, int length, Director director, String summary, String poster, String genre, int rating, String trailer) {
        this.title = title;
        this.cast = cast;
        this.length = length;
        this.director = director;
        this.summary = summary;
        this.poster = poster;
        this.genre = genre;
        this.rating = rating;
        this.trailer = trailer;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public List<Actor> getCast() {return cast;}
    public void setCast(List<Actor> cast) {this.cast = cast;}
    public int getLength() {return length;}
    public void setLength(int length) {this.length = length;}
    public Director getDirector() {return director;}
    public void setDirector(Director director) {this.director = director;}
    public String getSummary() {return summary;}
    public void setSummary(String summary) {this.summary = summary;}
    public String getPoster() {return poster;}
    public void setPoster(String poster) {this.poster = poster;}
    public String getGenre() {return genre;}
    public void setGenre(String genre) {this.genre = genre;}
    public int getRating() {return rating;}
    public void setRating(int rating) {this.rating = rating;}
    public String getTrailer() {return trailer;}
    public void setTrailer(String trailer) {this.trailer = trailer;}
}
