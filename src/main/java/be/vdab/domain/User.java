package be.vdab.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;

    public String userName;
    public String password;
    public String email;

    @OneToMany
    public List<Comment> posts;

    public User(String userName, String password, String email, List<Comment> posts) {
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.posts = posts;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getUserName() {return userName;}
    public void setUserName(String userName) {this.userName = userName;}
    public String getPassword() {return password;}
    public void setPassword(String password) {this.password = password;}
    public String getEmail() {return email;}
    public void setEmail(String email) {this.email = email;}
    public List<Comment> getPosts() {return posts;}
    public void setPosts(List<Comment> posts) {this.posts = posts;}
}
