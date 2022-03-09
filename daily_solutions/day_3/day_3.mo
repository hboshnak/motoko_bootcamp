import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Char "mo:base/Char";


actor {
    //Challenge 1
    private func swap(array : [var Nat], j : Nat, i: Nat): [var Nat]{
        let temp : Nat = array[i];
        array[i] := array[j];
        array[j] := temp;
        return array;
    };

    public func swap_test(array:[Nat], i: Nat, j: Nat): async [Nat]{
        return Array.freeze(swap(Array.thaw(array), i, j));
    };

    // Challenge 2
    public func init_count(a : Nat): async [Nat]{
        return (Array.tabulate(a, func(i : Nat) : Nat {i}));
    };

    // Challenge 3
    public func seven(array : [Nat]) : async Text {
        for (i in array.vals()) {
            if(i == 7){
                return("Seven is found");
            };
        };
        return ("Seven not found");
    };

    // Challenge 4
    public func nat_opt_to_nat(n : ?Nat, m : Nat): async Text{
        switch(n){
            case(null) {
                (Nat.toText(m))
            };
            case(?n) {
                (Nat.toText(n))
            };
        };
    };

    // Challenge 5
    public func day_of_the_week(n: Nat) : async ?Text{
        let arr_days : [Text] = ["Monday", "Tuesday", "Wednesday", "Thirsday", "Friday", "Sataday", "Sunday"];
        if ( (n > 0) and (n < 8) ){
            return ?arr_days[(n-1)];
        }
        else {
          return (null);      
        };

    };
};