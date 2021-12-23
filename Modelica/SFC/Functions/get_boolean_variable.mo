within SFC.Functions;

impure function get_boolean_variable
 extends Modelica.Icons.Function;
 input Integer handle;
 output Boolean value;
 external "C" value = get_boolean_variable(handle) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end get_boolean_variable;
