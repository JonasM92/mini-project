package be.vdab.domain;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Actor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    public String name;
    public String bio;
    public Date birthDate;
    public Gender g;
    public byte[] picture;

    @OneToMany(mappedBy = "actor")
    public List<Character> occurences;

    public Actor() {
    }

    public Actor(String name, String bio, Date birthDate, Gender g, byte[] picture, List<Character> occurences) {
        this.name = name;
        this.bio = bio;
        this.birthDate = birthDate;
        this.g = g;
        this.picture = picture;
        this.occurences = occurences;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getName() {return name;}
    public void setName(String name) {this.name = name;}
    public String getBio() {return bio;}
    public void setBio(String bio) {this.bio = bio;}
    public Date getBirthDate() {return birthDate;}
    public void setBirthDate(Date birthDate) {this.birthDate = birthDate;}
    public Gender getG() {return g;}
    public void setG(Gender g) {this.g = g;}
    public byte[] getPicture() {return picture;}
    public void setPicture(byte[] picture) {this.picture = picture;}
    public List<Character> getFilmography() {return occurences;}
    public void setFilmography(List<Character> filmography) {this.occurences = filmography;}
}
