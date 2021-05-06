package example;

import java.io.Serializable;

public class User implements Serializable {


    private int id;
    private String email;



    private String username;
    private String password;

    public User() {
        id = 0;
        email = "";
        username = "";
        password = "";
    }

    public User(int id,String username, String password, String email) {
        this.id=id;
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
