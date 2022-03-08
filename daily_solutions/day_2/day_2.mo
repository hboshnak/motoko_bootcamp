import Nat "mo:base/Nat";
import Order "mo:base/Order";
import Option "mo:base/Option";
import Bool "mo:base/Bool";
import Nat32 "mo:base/Nat32";
import Text "mo:base/Text";
import Nat8 "mo:base/Nat8";
import Iter "mo:base/Iter";
import Prim "mo:⛔";
import Char "mo:base/Char";
import Buffer "mo:base/Buffer";
import Debug "mo:base/Debug";

actor {

  // Challenge 1
  public func nat_to_nat8(n : Nat) : async Nat8 {
    let nat8max : Nat = (2**8 - 1);
    if (n > nat8max){
      return 0;
    }
    else {
      return Prim.natToNat8(n);
    };
  };

  // Challenge 2
  public func max_number_with_n_bits(n : Nat) : async Nat {
    let max_number : Nat = Nat.pow(2, n) - 1;
    return max_number;
  };

  // Challenge 3
  public func unicode_to_bits(n : Nat) : async Text{
    var bstring : Text = "";
    var i: Nat = n;

    if (n==0) {
      return "0";
    }
    else{
      while (i > 0){
       bstring := Text.concat(Nat.toText(i % 2), bstring);
       i := i / 2;
      };
      return bstring;
    };
  };

  // Challenge 4
    public func capitalize_character(c : Char) : async Char{
    var unicode : Nat32 = Char.toNat32(c);
    if ((unicode >= Char.toNat32('a')) and (unicode <= Char.toNat32('z'))){
      unicode := unicode - (Char.toNat32('a') - Char.toNat32('A'));
      return Char.fromNat32(unicode);
    } else{
      return c;
    };
  };

  //Challenge 5
  public func capitalize_text(text : Text) : async Text{
    var capitalized = "";
    var buff : Char = 'a';
     
    for(char in Text.toIter(text)){
      buff := await capitalize_character(char);
      capitalized #= Prim.charToText(buff);
    };
    return capitalized;
  };

  //Challenge 6
  public func is_inside(t : Text, c: Char) : async Bool{
    for(char in Text.toIter(t)){
      if(c == char){
        return true;
      };
    };
    return false;
  };

  // Challenge 7
  public func trim_whitespace(t: Text) : async Text{
    var temp : Text = "";
    for(char in Text.toIter(t)){
      if (char != ' '){
        temp #= Text.fromChar(char);
      };
    };
    return temp;
  };  

  // challenge 8
  public func duplicate_character(t: Text) : async Text{
    var buffer : Buffer.Buffer<Char> =  Buffer.Buffer(0);
    var filtered : Text = "";

    for(char in Text.toIter(t)){
      var duplicates = 0;
      for(buf_char in buffer.vals()){
        if (buf_char != char) {
          duplicates += 1;
        }
      };
      if (duplicates == buffer.size()) {
        buffer.add(char);
      }
    };

    for(i in buf.vals()){
      filtered #= Char.toText(i);
    };

    return filtered;
  };

   // challenge 9
   public func size_in_bytes(t : Text) : async Nat{
     return Text.encodeUtf8(t).size();
   };

   // challenge 10
   public func bubble_sort(array: [Nat]) : async [Nat]{d
     var buff_sorted : Buffer.Buffer<Nat> = Buffer.Buffer(array.size());
     for(element in array.vals())
      { 
        buff_sorted.add(v) 
      };

     for(i in Iter.range(1, (buff_sorted.size()))){
       for(j in Iter.range(0, (buff_sorted.size()-i-1))){
         let is_less : Bool = Order.isLess(Nat.compare(buff_sorted.get(j), buff_sorted.get(j+1)));
         if(is_less == false){
           var tmp : Nat = buff_sorted.get(j);
           buff_sorted.put(j, buff_sorted.get(j+1));
           buff_sorted.put(j+1, tmp);
         };
       };
     };
     return buff_sorted.toArray();
   };
};

