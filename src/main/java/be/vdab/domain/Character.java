package be.vdab.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    public String name;
    public Gender g;

    public Actor actor;
    public Film film;

    public Character(String name, Gender g, Actor actor, Film film) {
        this.name = name;
        this.g = g;
        this.actor = actor;
        this.film = film;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getName() {return name;}
    public void setName(String name) {this.name = name;}
    public Gender getG() {return g;}
    public void setG(Gender g) {this.g = g;}
    public Actor getActor() {return actor;}
    public void setActor(Actor actor) {this.actor = actor;}
    public Film getFilm() {return film;}
    public void setFilm(Film film) {this.film = film;}
}
