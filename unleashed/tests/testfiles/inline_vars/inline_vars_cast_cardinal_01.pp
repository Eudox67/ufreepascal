program inline_vars_cast_cardinal_01;
{$mode unleashed}

<<<<<<< HEAD
// explicit Cardinal cast bypasses the PtrInt promotion and gives a
=======
// explicit Cardinal cast bypasses the LongInt promotion and gives a
>>>>>>> origin/main
// 4-byte unsigned slot

begin
  var c := Cardinal(42);
  if SizeOf(c) <> SizeOf(Cardinal) then halt(1);
  if SizeOf(c) <> 4 then halt(2);
  if c <> 42 then halt(3);
end.
