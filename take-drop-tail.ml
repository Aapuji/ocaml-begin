(** returns:  [from i j l] is the list containing the integers from
 *   [i] to [j], inclusive, followed by the list [l].
 * example:  [from 1 3 [0] = [1;2;3;0]] *)
 let rec from i j l =
  if i > j then l
  else from i (j - 1) (j :: l)

(** returns:  [i -- j] is the list containing the integers from
 *   [i] to [j], inclusive.
 *) 
let (--) i j =
  from i j []

let longlist = 0 -- 1_000_000
let () = Printf.printf "hi"

(* This isn't tail recursive apparently *)
let rec take n lst = match n, lst with
  | _, []   -> []
  | 0, _    -> []
  | n, h::t -> h::(take (n-1) t)

let rec drop n lst = match n, lst with
  | _, []   -> []
  | 0, lst  -> lst
  | n, _::t -> drop (n-1) t

let main () = 
  List.iter (Printf.printf "%d ") @@ take 10 longlist ;
  Printf.printf "\n%!"

let _ = main ()
