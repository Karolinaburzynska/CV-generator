package com.example.projectcv.service;

import com.example.projectcv.model.Contact;
import com.example.projectcv.repository.ContactRepository;
import org.springframework.stereotype.Service;

@Service
public class ContactService {

    private final ContactRepository contactRepository;

    public ContactService(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public void addContact (Contact contact) {
        contactRepository.save(contact);
    }
}
