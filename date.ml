let verify_date ?(leap=false) day month = 
  if day <= 0 
  then false
  else 
    match month with
      | "Jan" -> day <= 31
      | "Feb" -> day <= 28 + if leap then 1 else 0
      | "Mar" -> day <= 31
      | "Apr" -> day <= 30
      | "May" -> day <= 31
      | "Jun" -> day <= 30
      | "Jul" -> day <= 31
      | "Aug" -> day <= 31
      | "Sep" -> day <= 30
      | "Oct" -> day <= 31
      | "Nov" -> day <= 30
      | "Dec" -> day <= 31
      | other -> false

let main () =
  Printf.printf "%b\n" (verify_date 25 "Dec") ;
  Printf.printf "%b\n" (verify_date ~leap:true 29 "Feb") ;
  Printf.printf "%b\n" (verify_date 35 "Apr") ;
  Printf.printf "%!"

let _ = main ()
