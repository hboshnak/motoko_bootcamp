actor {

  // Challenge 1
  type TokenIndex = Nat;
  type Error = {
    #Error1;
    #Error2;
  };

  // Challenge 2
  stable var registryEntries : [(TokenIndex, Principal)] = [];
  let registry : HashMap.HashMap<TokenIndex, Principal> = HashMap.fromIter<TokenIndex, Principal>(registryEntries.vals(), 10,Nat.equal, Hash.hash);
 

  // Challenge 3
  type nextTokenIndex = Nat;
  var next : nextTokenIndex = 0;

  type Result<Ok, Err> = {#ok : Ok; #err : Err};

  public shared ({caller}) func mint() : async Result<(), Text> {
    if(Principal.isAnonymous(caller)){
      return #err("You need to be authenticated to register");
    } else {
       registry.put(next, caller);
       next += 1; 
      return #ok;
    }
  };
  
  public func checkRegistry (): async [(Nat, Principal)] {
    return Iter.toArray<(Nat, Principal)>(registry.entries());
  };