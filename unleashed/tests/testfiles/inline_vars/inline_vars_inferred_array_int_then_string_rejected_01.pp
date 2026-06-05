{ %FAIL }
program inline_vars_inferred_array_int_then_string_rejected_01;
{$mode unleashed}

<<<<<<< HEAD
// first element is an integer -> array of PtrInt; subsequent string
=======
// first element is an integer -> array of LongInt; subsequent string
>>>>>>> origin/main
// literal cannot be cast to an ordinal -> compile error

begin
  var a := [42, 'oops'];
end.
