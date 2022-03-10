module {
    
    public type Animal = {
        specie: Text;
        energy: Nat;
    };

    // Challenge 3
    public func animal_sleep(animal : Animal) : Animal {
        let newAnimal = {
            specie = animal.specie;
            energy = animal.energy+ 10;
        };
        return newAnimal;
    };

    // Challenge 4
    public func create_animal_then_takes_a_break(speice : Text, energy : Nat): async Animal {
        let animal = {
            spe = specie;
            nrg = energy;
        };
        return Animal.animal_sleep(animal);
    };

};