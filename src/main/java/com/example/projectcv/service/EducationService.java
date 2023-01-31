package com.example.projectcv.service;

import com.example.projectcv.model.Education;
import com.example.projectcv.repository.EducationRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EducationService {

    private final EducationRepository educationRepository;

    public EducationService(EducationRepository educationRepository) {
        this.educationRepository = educationRepository;
    }

    public void addEducation (Education education){
        educationRepository.save(education);
    }

    public List<Education> getEducationList(){
        return educationRepository.findAll();
    }

    public void deleteEducation (Long id){
        educationRepository.deleteById(id);
    }


}
