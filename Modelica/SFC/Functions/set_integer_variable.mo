within SFC.Functions;

impure function set_integer_variable
  extends Modelica.Icons.Function;
 input Integer handle;
 input Integer value;
 external "C" set_integer_variable(handle, value) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end set_integer_variable;
