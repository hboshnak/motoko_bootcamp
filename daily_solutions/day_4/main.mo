import Custom "custom";
import Animal "animal";

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
  public type animal = Animal.Animal;


};