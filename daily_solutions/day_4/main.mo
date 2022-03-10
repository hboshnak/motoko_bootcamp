import Custom "custom";
import Animal "animal";
import Array "mo:base/Array";
import List "mo:base/List";


actor {

  // Challenge 1
  
  public func fun(): async Custom.Nft{
    let dbr: Custom.Nft = {
      supply = 2121;
      name = "dbr";
      chain = "icp";
    };
    return dbr;
    };

  // Challenge 2
  public type Animal = Animal.Animal;

  // Challenge 4
  public func create_animal_then_takes_a_break(specie: Text, energy: Nat): async Animal {
    let animal : Animal.Animal = {
        specie = specie;
        energy = energy;
    };

      return Animal.animal_sleep(animal);
  };

  // Challenge 5
  type List<Animal> = ?(Animal, List<Animal>);
  var animals = List.nil<Animal>();

  // Challenge 6
  public func push_animal(a: Animal): async (){
    animals := List.push(a, animals);
  };

};