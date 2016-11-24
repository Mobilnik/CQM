package org.cqm.data.services;

import org.cqm.data.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public UserRepository getUserRepository() {
        return this.userRepository;
    }
}
