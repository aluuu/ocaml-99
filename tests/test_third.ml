open OUnit
open Third

let test_first = "Third" >::: [
  "Kth element" >:: (
    fun () ->
    assert_equal 3 (Third.find_kth_elem [1; 2; 3] 3);
    assert_equal 2 (Third.find_kth_elem [1; 2] 2);
    assert_equal "a" (Third.find_kth_elem ["a"] 1)
  );
  "Last fails" >:: (
    fun () ->
    assert_raises
      (Failure "No such index in given list")
      (fun () -> Third.find_kth_elem [] 1);
    assert_raises
      (Failure "No such index in given list")
      (fun () -> Third.find_kth_elem [1] 2);
    assert_raises
      (Failure "No such index in given list")
      (fun () -> Third.find_kth_elem [1] 0)
  )];;

let _ = run_test_tt ~verbose:true test_first
