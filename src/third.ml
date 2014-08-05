let find_kth_elem lst k =
  let rec find_kth_elem' lst idx k =
    match lst with
      [] -> failwith "No such index in given list"
    | x :: xs -> if k = idx then x else find_kth_elem' xs (idx + 1) k
  in find_kth_elem' lst 1 k;;
