package org.techlabs.student.management.system.entity;

public class User {
    private long id;
    private String name;
    private String email;
    private String mobile;
    private String password;
    private String role;

    public User() {
    }

    public User(long id) {
        this.id = id;
    }

    public User(long id, String name, String email, String mobile, String password, String role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.password = password;
        this.role = role;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
