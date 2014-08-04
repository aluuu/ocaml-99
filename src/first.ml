let rec last' lst =
  match lst with
   [] ->  failwith "List must be not empty."
  | x :: [] -> x
  | _ :: xs -> last' xs;;
