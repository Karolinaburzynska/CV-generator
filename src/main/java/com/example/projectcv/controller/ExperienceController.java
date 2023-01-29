package com.example.projectcv.controller;

import com.example.projectcv.model.Education;
import com.example.projectcv.model.Experience;
import com.example.projectcv.service.EducationService;
import com.example.projectcv.service.ExperienceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class ExperienceController {

    private final ExperienceService service;

    public ExperienceController(ExperienceService service) {
        this.service = service;
    }
    @GetMapping("/experience")
    public String getExperience (Model model){
        List<Experience> experienceList = service.getExperienceList();
        model.addAttribute("experience", experienceList);
        return "/experience";
    }

    @PostMapping("/experience")
    public RedirectView postExperience(Experience experience ){
        service.addExperience(experience);
        return new RedirectView("/experience");
    }
}
