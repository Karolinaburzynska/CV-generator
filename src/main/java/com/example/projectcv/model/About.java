package com.example.projectcv.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
@Entity
public class About {
    @Id
    private Long id;

    @Column(name = "birthday")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    @Column(name = "age")
    private int age;
    @Column(name = "phone")
    private String phone;
    @Column(name = "email")
    private String email;
    @Column(name = "city")
    private String city;
    @Column(name = "freelance")
    private String freelance;
    @Column(name = "description")
    private String description;


    public About() {
    }

    public About(Long id, Date birthday, int age, String phone, String email, String city, String freelance, String description) {
        this.id = id;
        this.birthday = birthday;
        this.age = age;
        this.phone = phone;
        this.email = email;
        this.city = city;
        this.freelance = freelance;
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getFreelance() {
        return freelance;
    }

    public void setFreelance(String freelance) {
        this.freelance = freelance;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
