import Array "mo:base/Array";
import Nat "mo:base/Nat";

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

  //Challenge 5
  public func divide(n : Nat, m : Nat) : async Bool {
    return ((n > 0) and (m % n == 0));
  };

  //Challenge 6
  public func is_even(n : Nat) : async Bool {
    return (n % 2 == 0)
  };

  //Challenge 7
  public func sum_of_array(array : [Nat]) : async Nat {
    var sum = 0;
    if (array.size() == 0){
      return sum;
    }
    else{
      for (val in array.vals()){
        sum := sum + val;
      }
    };
      return sum;
  };

  //Challenge 8
  public func maximum(array : [Nat]) : async Nat {
    var max_val = 0;
    for (val in array.vals()){
      if (val > max_val){
        max_val := val;
      };
    };
    return max_val;
  };

  //Challenge 9
  public func remove_from_array(array : [Nat], n : Nat) : async [Nat]{
    return Array.filter(array, func (m : Nat) : Bool {
      return m != n;
    });
  };

  //Challenge 10
  public func selection_sort(array : [Nat]) : async [Nat]{
    return Array.sort(array, Nat.compare);
  };
};
