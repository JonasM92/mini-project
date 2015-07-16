package be.vdab.domain;

import javax.persistence.*;

/**
 * Created by jeansmits on 16/07/15.
 */
@Entity
public class Quote {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    @Lob
    public String quote;

    @Override
    public String toString(){
        return this.quote;
    }
    public Quote() {
    }

    public Quote(String quote) {
        this.quote = quote;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuote() {
        return quote;
    }

    public void setQuote(String quote) {
        this.quote = quote;
    }
}
