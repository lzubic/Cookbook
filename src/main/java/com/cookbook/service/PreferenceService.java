package com.cookbook.service;

import com.cookbook.domain.*;
import com.cookbook.repository.CharacteristicRepository;
import com.cookbook.repository.PreferenceRepository;
import com.cookbook.utilities.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PreferenceService {
    private final PreferenceRepository preferenceRepository;
    private final CharacteristicRepository characteristicRepository;

    @Autowired
    public PreferenceService(PreferenceRepository preferenceRepository, CharacteristicRepository characteristicRepository) {
        this.preferenceRepository = preferenceRepository;
        this.characteristicRepository = characteristicRepository;
    }

    public void save(User user) {
        Preference preference = new Preference();
        preference.setTotal(1);
        preference.setUser(user);

        Preference animalProduct = new Preference();
        animalProduct.setTotal(1);
        animalProduct.setUser(user);
        animalProduct.setCharacteristic(characteristicRepository.findByName("Animal Product"));

        if (user.getMeat()) {
            animalProduct.setScore(Constants.SCORE_MEAT_ANIMAL_PRODUCT);

            preference.setScore(Constants.SCORE_MEAT_MEAT);
            preference.setCharacteristic(characteristicRepository.findByName("Meat"));
            preferenceRepository.save(preference);

            preference.setScore(Constants.SCORE_MEAT_PORK);
            preference.setCharacteristic(characteristicRepository.findByName("Pork"));
            preferenceRepository.save(preference);

            preference.setScore(Constants.SCORE_MEAT_BEEF);
            preference.setCharacteristic(characteristicRepository.findByName("Beef"));
            preferenceRepository.save(preference);
        } else {
            animalProduct.setScore(-Constants.SCORE_MEAT_ANIMAL_PRODUCT);

            preference.setScore(-Constants.SCORE_MEAT_MEAT);
            preference.setCharacteristic(characteristicRepository.findByName("Meat"));
            preferenceRepository.save(preference);

            preference.setScore(-Constants.SCORE_MEAT_PORK);
            preference.setCharacteristic(characteristicRepository.findByName("Pork"));
            preferenceRepository.save(preference);

            preference.setScore(-Constants.SCORE_MEAT_BEEF);
            preference.setCharacteristic(characteristicRepository.findByName("Beef"));
            preferenceRepository.save(preference);
        }

        if (user.getChicken()) {
            animalProduct.setScore(animalProduct.getScore() + Constants.SCORE_CHICKEN_ANIMAL_PRODUCT);

            preference.setScore(Constants.SCORE_CHICKEN_CHICKEN);
            preference.setCharacteristic(characteristicRepository.findByName("Chicken"));
            preferenceRepository.save(preference);
        } else {
            animalProduct.setScore(animalProduct.getScore() - Constants.SCORE_CHICKEN_ANIMAL_PRODUCT);

            preference.setScore(-Constants.SCORE_CHICKEN_CHICKEN);
            preference.setCharacteristic(characteristicRepository.findByName("Chicken"));
            preferenceRepository.save(preference);
        }

        if (user.getFish()) {
            preference.setScore(Constants.SCORE_FISH_FISH);
            preference.setCharacteristic(characteristicRepository.findByName("Fish"));
            preferenceRepository.save(preference);

            preference.setScore(Constants.SCORE_FISH_SEAFOOD);
            preference.setCharacteristic(characteristicRepository.findByName("Seafood"));
            preferenceRepository.save(preference);

            animalProduct.setScore(animalProduct.getScore() + Constants.SCORE_FISH_ANIMAL_PRODUCT);
        } else {
            preference.setScore(-Constants.SCORE_FISH_FISH);
            preference.setCharacteristic(characteristicRepository.findByName("Fish"));
            preferenceRepository.save(preference);

            preference.setScore(-Constants.SCORE_FISH_SEAFOOD);
            preference.setCharacteristic(characteristicRepository.findByName("Seafood"));
            preferenceRepository.save(preference);

            animalProduct.setScore(animalProduct.getScore() - Constants.SCORE_FISH_ANIMAL_PRODUCT);
        }
        preferenceRepository.save(animalProduct);

        if (user.getSpicy()) {
            preference.setScore(Constants.SCORE_SPICY_SPICE);
            preference.setCharacteristic(characteristicRepository.findByName("Spice"));
            preferenceRepository.save(preference);

            preference.setScore(Constants.SCORE_SPICY_SPICY);
            preference.setCharacteristic(characteristicRepository.findByName("Spicy"));
            preferenceRepository.save(preference);

            preference.setScore(Constants.SCORE_SPICY_SALTY);
            preference.setCharacteristic(characteristicRepository.findByName("Salty"));
            preferenceRepository.save(preference);
        } else {
            preference.setScore(-Constants.SCORE_SPICY_SPICE);
            preference.setCharacteristic(characteristicRepository.findByName("Spice"));
            preferenceRepository.save(preference);

            preference.setScore(-Constants.SCORE_SPICY_SPICY);
            preference.setCharacteristic(characteristicRepository.findByName("Spicy"));
            preferenceRepository.save(preference);

            preference.setScore(-Constants.SCORE_SPICY_SALTY);
            preference.setCharacteristic(characteristicRepository.findByName("Salty"));
            preferenceRepository.save(preference);
        }

        if (user.getSweets()) {
        } else {
        }
    }

    public void save(List<Integer> rates, User user, List<Recipe> recipes) {
        for (int i = 0; i < rates.size(); i++) {
            for (Ingredient ingredient : recipes.get(i).getIngredients()) {
                for (Characteristic characteristic : ingredient.getCharacteristics()) {
                    Preference preference = preferenceRepository.find(user.getId(), characteristic.getId());
                    if (preference == null) {
                        preference = new Preference();
                        preference.setUser(user);
                        preference.setCharacteristic(characteristic);
                    }
                    preference.setScore(preference.getScore() + (rates.get(i) - 3.0) / 2.0);
                    preference.setTotal(preference.getTotal() + 1);
                    preferenceRepository.save(preference);
                }
            }
        }
    }

    public void save(Integer rate, User user, Recipe recipe) {
        for (Ingredient ingredient : recipe.getIngredients()) {
            for (Characteristic characteristic : ingredient.getCharacteristics()) {
                Preference preference = preferenceRepository.find(user.getId(), characteristic.getId());
                if (preference == null) {
                    preference = new Preference();
                    preference.setUser(user);
                    preference.setCharacteristic(characteristic);
                }
                preference.setScore(preference.getScore() + (rate - 3.0) / 2.0);
                preference.setTotal(preference.getTotal() + 1);
                preferenceRepository.save(preference);
            }
        }
    }
}
