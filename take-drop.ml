let rec take n lst = match n, lst with
  | _, []   -> []
  | 0, _    -> []
  | n, h::t -> h::(take (n-1) t)

let rec drop n lst = match n, lst with
  | _, []   -> []
  | 0, lst  -> lst
  | n, h::t -> drop (n-1) t

let main () = 
  List.iter (Printf.printf "%d ") @@ drop 5 [1; 2; 3; 4; 5; 6; 7] ;
  Printf.printf "\n%!"

let _ = main ()
