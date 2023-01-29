package com.example.projectcv.model;

import javax.persistence.*;

@Entity
public class Skill {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name_skill")
    private String nameSkill;
    @Column(name = "percent")
    private int percent;

    public Skill() {
    }


    public Skill(Long id, String nameSkill, int percent) {
        this.id = id;
        this.nameSkill = nameSkill;
        this.percent = percent;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNameSkill() {
        return nameSkill;
    }

    public void setNameSkill(String nameSkill) {
        this.nameSkill = nameSkill;
    }

    public int getPercent() {
        return percent;
    }

    public void setPercent(int percent) {
        this.percent = percent;
    }
}


