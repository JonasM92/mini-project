package be.vdab.domain;

import javax.persistence.*;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
@Table(name = "MovieCharacter")
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    public String characterName;
    @ManyToOne
    public Actor actor;

    @ManyToOne
    public Movie movie;

    public Character() {
    }

    public Character(String characterName, Actor actor, Movie movie) {
        this.characterName = characterName;
        this.actor = actor;
        this.movie = movie;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getCharacterName() {return characterName;}
    public void setCharacterName(String characterName) {this.characterName = characterName;}
    public Actor getActor() {return actor;}
    public void setActor(Actor actor) {this.actor = actor;}
    public Movie getMovie() {return movie;}
    public void setMovie(Movie movie) {this.movie = movie;}
}
