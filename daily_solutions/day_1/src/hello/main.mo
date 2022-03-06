actor {
  
  var counter : Nat = 0;
  //This is the default greet function of the base template project
  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };

  //Challenge 1
  public func add(n : Nat, m : Nat) : async Nat {
    return n + m;
  };

  //Challenge 2
  public func square(n : Nat) : async Nat {
    return n * n;
  };

  //Challenge 3
  public func days_to_second(n : Nat) : async Nat {
    return n * 24 * 3600;
  };

  //Challenge 4
  public func increment_counter(n : Nat) : async Nat {
    counter := counter + n;
    return counter;
  };

  public func clear_counter() : async Nat {
    counter := 0;
    return counter;
  };

};