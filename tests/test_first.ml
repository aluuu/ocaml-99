open OUnit
open First

let test_first = "First" >::: [
  "Last" >:: (
    fun () ->
    assert_equal 3 (First.last' [1; 2; 3]);
    assert_equal 2 (First.last' [1; 2]);
    assert_equal "a" (First.last' ["a"])
  );
  "Last fails" >:: (
    fun () ->
    assert_raises
      (Failure "List must be not empty.")
      (fun () -> First.last' [])
  )];;

let _ = run_test_tt ~verbose:true test_first
