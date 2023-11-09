package es.ausiasmarch.liberlibrum.bean;

import com.fasterxml.jackson.annotation.JsonProperty;

public class UserBean {
    
    private String username;
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String password;

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
