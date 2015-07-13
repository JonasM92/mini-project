package be.vdab.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    public String title;
    @OneToMany(mappedBy = "id")
    public List<Character> cast;

    public int length;

    @ManyToOne
    public Director director;
    public String summary;
    public byte[] poster;
    public String genre;
    public int rating;
    public String trailer;

    @OneToMany(mappedBy = "id")
    public List<Comment> comments;

    public Movie() {
    }

    public Movie(String title, List<Character> cast, int length, Director director, String summary, byte[] poster, String genre, int rating, String trailer, List<Comment> comments) {
        this.title = title;
        this.cast = cast;
        this.length = length;
        this.director = director;
        this.summary = summary;
        this.poster = poster;
        this.genre = genre;
        this.rating = rating;
        this.trailer = trailer;
        this.comments = comments;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getTitle() {return title;}
    public void setTitle(String title) {this.title = title;}
    public List<Character> getCast() {return cast;}
    public void setCast(List<Character> cast) {this.cast = cast;}
    public int getLength() {return length;}
    public void setLength(int length) {this.length = length;}
    public Director getDirector() {return director;}
    public void setDirector(Director director) {this.director = director;}
    public String getSummary() {return summary;}
    public void setSummary(String summary) {this.summary = summary;}
    public byte[] getPoster() {return poster;}
    public void setPoster(byte[] poster) {this.poster = poster;}
    public String getGenre() {return genre;}
    public void setGenre(String genre) {this.genre = genre;}
    public int getRating() {return rating;}
    public void setRating(int rating) {this.rating = rating;}
    public String getTrailer() {return trailer;}
    public void setTrailer(String trailer) {this.trailer = trailer;}
    public List<Comment> getComments() {return comments;}
    public void setComments(List<Comment> comments) {this.comments = comments;}
}
