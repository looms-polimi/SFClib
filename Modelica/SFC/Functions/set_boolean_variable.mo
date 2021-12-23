within SFC.Functions;

impure function set_boolean_variable
  extends Modelica.Icons.Function;
 input Integer handle;
 input Boolean value;
 external "C" set_boolean_variable(handle, value) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end set_boolean_variable;
