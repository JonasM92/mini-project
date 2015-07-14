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
}
