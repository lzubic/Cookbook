package com.cookbook.service;

import com.cookbook.domain.User;
import com.cookbook.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Iterable<User> findAll() {
        return userRepository.findAll();
    }

    public User findById(Long id) {
        return userRepository.findOne(id);
    }

    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    public void save(User user) {
        User existingUser = userRepository.findByUsername(user.getUsername());
        if (existingUser == null) {
            userRepository.save(user);
        }
    }

    public void update(Long id, User user) {
        User newUser = userRepository.findOne(id);
        newUser.setUsername(user.getUsername());
        newUser.setPassword(user.getPassword());
        newUser.setFirstName(user.getFirstName());
        newUser.setLastName(user.getLastName());
        newUser.setEmail(user.getEmail());
        newUser.setBirthday(user.getBirthday());
        newUser.setGender(user.getGender());
        newUser.setCountry(user.getCountry());
        newUser.setOverview(user.getOverview());
        userRepository.save(newUser);
    }

    public void delete(Long id) {
        userRepository.delete(id);
    }
}
