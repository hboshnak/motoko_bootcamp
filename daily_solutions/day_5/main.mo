import Principal "mo:base/Principal";
import Debug "mo:base/Debug";
import HashMap "mo:base/HashMap";
import Option "mo:base/Option";
import Cycles "mo:base/ExperimentalCycles";

actor {

    // Challenge 1
    let anon_prince : Text = "2vxsx-fae";
    public shared({caller}) func is_anonymous() : async Bool {
        Principal.equal(caller, Principal.fromText(anon_prince))
    };

    // Challenge 2
    let favoriteNumber : HashMap.HashMap<Principal, Nat> = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);

    // Challenge 3
    public shared({caller}) func add_favorite_number(n : Nat) {
        favoriteNumber.put(caller, n);
    };

    public shared({caller}) func show_favorite_number() : async ?Nat {
        return favoriteNumber.get(caller);
    };

    // Challenge 4
    public shared(m) func add_more_favorite_number(n: Nat): async Text {
        if (favoriteNumber.get(m.caller) != null) {
            return ("Number already registered");
        };
        favoriteNumber.put(m.caller, n);
        return ("Number registered sucessfully");
    };

    // Challenge 5
    public shared({caller}) func update_favorite_number(n : Nat): async Text {
        favoriteNumber.put(caller,n);
    return ("Number updated sucessfully");
    };

    public shared({caller}) func delete_favorite_number(): async Text {
        favoriteNumber.delete(caller);
    return ("Number deleted sucessfully");
    };

    // Challenge 6
    public func deposit_cycles() : async Nat {
        let received = Cycles.accept(Cycles.available());
        return (received);
    };
};