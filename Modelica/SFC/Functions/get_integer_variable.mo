within SFC.Functions;

impure function get_integer_variable
 input Integer handle;
 output Integer value;
 external "C" value = get_integer_variable(handle) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end get_integer_variable;