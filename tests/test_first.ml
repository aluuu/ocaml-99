open OUnit
open First

let tests = "First" >::: [
  "last' 1" >:: (fun () -> assert_equal (3) (last' [1; 2; 3]));
  "last' 2" >:: (fun () -> assert_equal (3) (last' []));];;
