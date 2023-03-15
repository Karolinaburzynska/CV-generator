package com.example.projectcv.controller;

import com.example.projectcv.model.About;
import com.example.projectcv.service.AboutService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class AboutController {

    private final AboutService service;

    public AboutController(AboutService service) {
        this.service = service;
    }

    @GetMapping("/about")
    public String getAbout (Model model){
        List<About> aboutList = service.getAboutList();
        model.addAttribute("about", aboutList);
        return "/about";
    }

    @GetMapping("/editAbout")
    public String getEditPerson (Model model){
        List<About> aboutList = service.getAboutList();
        model.addAttribute("/editAbout", aboutList);
        return "/editAbout";
    }

    @PostMapping("/editAbout")
    public RedirectView postEducation(About about ){
       about.setId(1L);
        service.addAbout(about);
        return new RedirectView("/about");
    }
}
