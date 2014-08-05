let rec lastbutone' lst =
  match lst with
   [] ->  failwith "List length must be greater then 1"
  | x :: [] -> failwith "List length must be greater then 1"
  | x :: _ :: [] -> x
  | _ :: xs -> lastbutone' xs;;
