program inline_vars_byte_promotion_01;

{$mode unleashed}

begin
  // bare numeric literal that fits in Byte still infers to PtrInt
  // (signed native word: LongInt on 32-bit, Int64 on 64-bit)
  var x := 10;
  if SizeOf(x) <> SizeOf(PtrInt) then halt(1);

  // explicit cast bypasses the promotion
  var b := Byte(10);
  if SizeOf(b) <> SizeOf(Byte) then halt(2);
end.
