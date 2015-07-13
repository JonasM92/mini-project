package be.vdab.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    @ManyToOne
    public User user;
    public int rating;
    public String content;
    public Date date;
    @ManyToOne
    public Movie movie;

    public Comment() {
    }

    //regular comment
    public Comment(Date date, String content, User user, Movie movie) {
        this.date = date;
        this.content = content;
        this.user = user;
        this.movie = movie;
    }

    //review
    public Comment(User user, int rating, String content, Date date) {
        this.user = user;
        this.rating = rating;
        this.content = content;
        this.date = date;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public User getUser() {return user;}
    public void setUser(User user) {this.user = user;}
    public int getRating() {return rating;}
    public void setRating(int rating) {this.rating = rating;}
    public String getContent() {return content;}
    public void setContent(String content) {this.content = content;}
    public Date getDate() {return date;}
    public void setDate(Date date) {this.date = date;}
    public Movie getMovie() {return movie;}
    public void setMovie(Movie movie) {this.movie = movie;}
}
