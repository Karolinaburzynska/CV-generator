package com.example.projectcv.service;

import com.example.projectcv.model.About;
import com.example.projectcv.repository.AboutRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AboutService {
    private final AboutRepository aboutRepository;

    public AboutService(AboutRepository aboutRepository) {
        this.aboutRepository = aboutRepository;
    }

    public void addAbout (About about){
        aboutRepository.save(about);
    }

    public List<About> getAboutList(){
        return aboutRepository.findAll();
    }


}
