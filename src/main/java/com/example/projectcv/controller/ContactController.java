package com.example.projectcv.controller;

import com.example.projectcv.model.Contact;
import com.example.projectcv.service.ContactService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ContactController {

    private final ContactService service;

    public ContactController(ContactService service) {
        this.service = service;
    }

    @GetMapping("/contact")
    public String getContact (){
        return "/contact";
    }

    @PostMapping("/contact")
    public RedirectView postEducation(Contact contact ){
        service.addContact(contact);
        return new RedirectView("/contact");
    }



}
