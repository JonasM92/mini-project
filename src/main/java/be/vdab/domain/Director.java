package be.vdab.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;
import java.util.List;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Director {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    public String name;
    public List<Movie> filmography;

    public Date birthDate;
    public Gender g;
    public String picture;

    public Director(String name, List<Movie> filmography, Date birthDate, Gender g, String picture) {
        this.name = name;
        this.filmography = filmography;
        this.birthDate = birthDate;
        this.g = g;
        this.picture = picture;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getName() {return name;}
    public void setName(String name) {this.name = name;}
    public List<Movie> getFilmography() {return filmography;}
    public void setFilmography(List<Movie> filmography) {this.filmography = filmography;}
    public Date getBirthDate() {return birthDate;}
    public void setBirthDate(Date birthDate) {this.birthDate = birthDate;}
    public Gender getG() {return g;}
    public void setG(Gender g) {this.g = g;}
    public String getPicture() {return picture;}
    public void setPicture(String picture) {this.picture = picture;}
}
