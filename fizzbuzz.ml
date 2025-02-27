(* Fizz Buzz - My First Ever Implementation *)
let fb n = if n mod 3 == 0 then
  if n mod 5 == 0 then
    "Fizzbuzz"
  else 
    "Fizz"
else if n mod 5 == 0 then
  "Buzz"
else
  string_of_int n

let fizzbuzz n = 
  let rec f n = if n <= 0 then 
    "" 
  else 
    f (n - 1) ^ "\n" ^ fb n 
  in
    Printf.printf "%s\n%!" (f n)

let main () = 
  fizzbuzz 100 

let _ = main ()
