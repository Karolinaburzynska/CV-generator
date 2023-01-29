package com.example.projectcv.service;

import com.example.projectcv.model.Skill;
import com.example.projectcv.repository.SkillRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SkillService {

    private final SkillRepository skillRepository;

    public SkillService(SkillRepository skillRepository) {
        this.skillRepository = skillRepository;
    }

    public void addSkill (Skill skill){
        skillRepository.save(skill);
    }

    public List<Skill> getSkillsList(){
        return skillRepository.findAll();
    }




}
