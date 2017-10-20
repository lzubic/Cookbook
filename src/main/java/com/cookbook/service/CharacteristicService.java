package com.cookbook.service;

import com.cookbook.domain.Characteristic;
import com.cookbook.repository.CharacteristicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CharacteristicService {
    private final CharacteristicRepository characteristicRepository;

    @Autowired
    public CharacteristicService(CharacteristicRepository characteristicRepository) {
        this.characteristicRepository = characteristicRepository;
    }

    public Iterable<Characteristic> findAll() {
        return characteristicRepository.findAll();
    }

    public Characteristic findById(Long id) {
        return characteristicRepository.findOne(id);
    }

    public void save(Characteristic characteristic) {
        characteristicRepository.save(characteristic);
    }

    public void update(Long id, Characteristic characteristic) {
        characteristicRepository.save(characteristic);
    }

    public void delete(Long id) {
        characteristicRepository.delete(id);
    }
}
