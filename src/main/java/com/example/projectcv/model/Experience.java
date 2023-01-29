package com.example.projectcv.model;

import javax.persistence.*;

@Entity
public class Experience {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "job_position")
    private String jobPosition;

    @Column(name = "workplace")
    private String workplace;
    @Column(name = "start_time")
    private int startTime;
    @Column(name = "stop_time")
    private int stopTime;
    @Column(name = "description")
    private String description;


    public Experience() {
    }

    public Experience(Long id, String jobPosition, String workplace, int startTime, int stopTime, String description) {
        this.id = id;
        this.jobPosition = jobPosition;
        this.workplace = workplace;
        this.startTime = startTime;
        this.stopTime = stopTime;
        this.description = description;
    }


    public String getJobPosition() {
        return jobPosition;
    }

    public void setJobPosition(String jobPosition) {
        this.jobPosition = jobPosition;
    }

    public String getWorkplace() {
        return workplace;
    }

    public void setWorkplace(String workplace) {
        this.workplace = workplace;
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
