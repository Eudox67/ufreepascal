program inline_vars_cast_int64_01;
{$mode unleashed}

<<<<<<< HEAD
// explicit Int64 cast - the variable is unambiguously Int64 on every
// platform (the literal `10` would otherwise be PtrInt which equals
// Int64 on 64-bit but LongInt on 32-bit)
=======
// explicit Int64 cast gives a guaranteed 8-byte signed slot; without the
// cast the literal `10` would have promoted to LongInt (4 bytes)
>>>>>>> origin/main

begin
  var i := Int64(10);
  if SizeOf(i) <> 8 then halt(1);
  if i <> 10 then halt(2);
end.
