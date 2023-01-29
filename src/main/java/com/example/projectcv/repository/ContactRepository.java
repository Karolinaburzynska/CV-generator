package com.example.projectcv.repository;

import com.example.projectcv.model.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactRepository extends JpaRepository <Contact, Long> {
}
