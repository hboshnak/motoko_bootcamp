module {

    public type List<T> = ?(T, List<T>);

    // Challenge 7
    public func is_null<T>(l : List<T>) : Bool{
        switch(l){
            case(null) { 
                return true; 
                };
            case(?list) {
                return false; 
                };
        };
    };

    // Challenge 8
    public func last<T>(l : List<T>) : ?T{
        switch(l){
            case(null) { 
                return null; 
                };
            case(?(l, null)) { 
                return ?l;
                };
            case(?(_, t)) { 
                return last<T>(t);
                };
        }
    };

    // Challenge 9
    public func size<T>(l : List<T>) : Nat{
        func sum(l : List, n: Nat): Nat{
            switch(l){
                case(null) { n };
                case(?(_, t)) { sum(t, n + 1) };
            }
        };
        sum(1, 0)
    };

    // Challenge 10
    public func get<T>(l : List<T>, n : Nat) : ?T{
        switch(n, l){
            case (_, null) { null };
            case (0, (?(h, t))) { ?h };
            case (_, (?(_, t))) { get<T>(t, n-1) };
        };
    };
}