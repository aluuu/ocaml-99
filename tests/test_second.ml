open OUnit
open Second

let test_second = "Second" >::: [
  "Last-but-one" >:: (
    fun () ->
    assert_equal 2 (Second.lastbutone' [1; 2; 3]);
    assert_equal 1 (Second.lastbutone' [1; 2])
  );
  "Last-but-one fails" >:: (
    fun () ->
    assert_raises
      (Failure "List length must be greater then 1")
      (fun () -> Second.lastbutone' []);
    assert_raises
      (Failure "List length must be greater then 1")
      (fun () -> Second.lastbutone' ["a"])
  )];;

let _ = run_test_tt ~verbose:true test_second
