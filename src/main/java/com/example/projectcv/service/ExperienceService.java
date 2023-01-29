package com.example.projectcv.service;

import com.example.projectcv.model.Experience;
import com.example.projectcv.repository.ExperienceRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExperienceService {

    private final ExperienceRepository experienceRepository;

    public ExperienceService(ExperienceRepository experienceRepository) {
        this.experienceRepository = experienceRepository;
    }

    public void addExperience (Experience experience){
        experienceRepository.save(experience);
    }

    public List<Experience> getExperienceList(){
        return experienceRepository.findAll();
    }


}
