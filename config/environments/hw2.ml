
(* Name: Yehya Abouelnaga

   UID: 604544467

   Others With Whom I Discussed Things:

   Other Resources I Consulted:
   
*)

(* Problem 1a
   doubleAllPos : int list -> int list *)
let doubleAllPos l = List.map (function x -> if x > 0 then x*x else x) l

(* Problem 1b
   unzip : ('a * 'b) list -> 'a list * 'b list *)

(* Problem 1c
   encode : 'a list -> (int * 'a) list *)

(* Problem 1d
   intOfDigits : int list -> int *)

(* Problem 2a
   map2 : ('a -> 'b -> 'c) -> 'a list -> 'b list -> 'c list *)

(* Problem 2b
   zip : 'a list * 'b list -> ('a * 'b) list *)

(* Problem 2c
   foldn : (int -> 'a -> 'a) -> int -> 'a -> 'a *)

(* Problem 2d
   clone : 'a * int -> 'a list *)

(* Problem 3a
   empty1: unit -> ('a * 'b) list
   put1: 'a -> 'b -> ('a * 'b) list -> ('a * 'b) list
   get1: 'a -> ('a * 'b) list -> 'b option
*)  

(* Problem 3b
   empty2: unit -> ('a,'b) dict2
   put2: 'a -> 'b -> ('a,'b) dict2 -> ('a,'b) dict2
   get2: 'a -> ('a,'b) dict2 -> 'b option
*)  
    
type ('a,'b) dict2 = Empty | Entry of 'a * 'b * ('a,'b) dict2
   
(* Problem 3c
   empty3: unit -> ('a,'b) dict3
   put3: 'a -> 'b -> ('a,'b) dict3 -> ('a,'b) dict3
   get3: 'a -> ('a,'b) dict3 -> 'b option
*)  

type ('a,'b) dict3 = ('a -> 'b option)

