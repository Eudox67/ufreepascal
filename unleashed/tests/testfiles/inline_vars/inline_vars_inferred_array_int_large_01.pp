program inline_vars_inferred_array_int_large_01;
{$mode unleashed}

// mix of small and large positive integers - the PtrInt element type
// accommodates values that would not fit in LongInt on 32-bit targets

begin
  var a := [1_000_000, 2_147_483_647, 5_000_000_000];
  if Length(a) <> 3 then halt(1);
  if SizeOf(a[0]) <> SizeOf(PtrInt) then halt(2);
  if a[0] <> 1_000_000 then halt(3);
  if a[1] <> 2_147_483_647 then halt(4);
  if a[2] <> 5_000_000_000 then halt(5);
end.
