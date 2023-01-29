package com.example.projectcv.model;

import javax.persistence.*;

@Entity
public class Education {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "field_of_study")
    private String fieldOfStudy;

    @Column(name = "place")
    private String place;
    @Column(name = "start_time")
    private int startTime;
    @Column(name = "stop_time")
    private int stopTime;
    @Column(name = "description")
    private String description;


    public Education() {
    }

    public Education(Long id, String fieldOfStudy, String place, int startTime, int stopTime, String description) {
        this.id = id;
        this.fieldOfStudy = fieldOfStudy;
        this.place = place;
        this.startTime = startTime;
        this.stopTime = stopTime;
        this.description = description;
    }


    public String getFieldOfStudy() {
        return fieldOfStudy;
    }

    public void setFieldOfStudy(String fieldOfStudy) {
        this.fieldOfStudy = fieldOfStudy;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getStartTime() {
        return startTime;
    }

    public void setStartTime(int startTime) {
        this.startTime = startTime;
    }

    public int getStopTime() {
        return stopTime;
    }

    public void setStopTime(int stopTime) {
        this.stopTime = stopTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
