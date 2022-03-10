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

};