let rec last' lst =
  match lst with
   [] ->  failwith "List must be not empty."
  | x :: [] -> x
  | _ :: xs -> last' xs;;

print_int (last' [1; 2; 3]);;
print_string (last' ["asd"; "zxc"; "qwe"]);;
last' [];;
