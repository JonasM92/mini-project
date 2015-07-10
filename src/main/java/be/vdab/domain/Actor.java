package be.vdab.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

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
    public String picture;

    public Actor(String name, String bio, Date birthDate, Gender g, String picture) {
        this.name = name;
        this.bio = bio;
        this.birthDate = birthDate;
        this.g = g;
        this.picture = picture;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getBio() {return bio;}
    public void setBio(String bio) {this.bio = bio;}
    public Date getBirthDate() {return birthDate;}
    public void setBirthDate(Date birthDate) {this.birthDate = birthDate;}
    public Gender getG() {return g;}
    public void setG(Gender g) {this.g = g;}
    public String getPicture() {return picture;}
    public void setPicture(String picture) {this.picture = picture;}
}
