let find_kth_elem lst k =
  let rec find_kth_elem' lst idx k =
    match lst with
      [] -> failwith "No such index in given list"
    | x :: xs -> if k = idx then x else find_kth_elem' xs (idx + 1) k
  in find_kth_elem' lst 1 k;;

print_int (find_kth_elem [1; 2; 3] 2);;
print_newline;;
print_string (find_kth_elem ["asd"; "zxc"; "qwe"] 3);;
print_newline;;
print_int  (find_kth_elem [1; 2] 1);;
print_newline;;
(* print_int  (find_kth_elem [1; 2] 3);; *)
print_int  (find_kth_elem [1; 2] 0);;
