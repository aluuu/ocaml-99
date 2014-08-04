let rec lastbutone' lst =
  match lst with
   [] ->  failwith "List length must be greater then 1"
  | x :: [] -> failwith "List length must be greater then 1"
  | x :: _ :: [] -> x
  | _ :: xs -> lastbutone' xs;;

print_int (lastbutone' [1; 2; 3]);;
print_string (lastbutone' ["asd"; "zxc"; "qwe"]);;
print_int  (lastbutone' [1; 2]);;
