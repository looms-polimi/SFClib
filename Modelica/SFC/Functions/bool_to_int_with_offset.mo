within SFC.Functions;

function bool_to_int_with_offset
  input Boolean bool;
  input Real offset;
  input Real amp=1;
  output Real y;
algorithm
  y := offset+(if bool then amp else 0);
end bool_to_int_with_offset;