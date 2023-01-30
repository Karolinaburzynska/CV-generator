package com.example.projectcv.controller;
import com.example.projectcv.model.Skill;
import com.example.projectcv.service.SkillService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class SkillsController {

private final SkillService service;

    public SkillsController(SkillService service) {
        this.service = service;
    }

    @GetMapping("/skills")
    public String getSkillsList(Model model){
        List<Skill> skillList = service.getSkillsList();
        model.addAttribute("skill", skillList);
        return "skills";
    }


    @PostMapping("/skills")
    public RedirectView postSkills(Skill skill){
        service.addSkill(skill);
        return new RedirectView("/skills");
    }

    @PostMapping("/skills/{id}")
    public RedirectView deleteSkills(@PathVariable("id") Long id){
        service.deleteSkill(id);
        return new RedirectView("/skills");
    }

}
