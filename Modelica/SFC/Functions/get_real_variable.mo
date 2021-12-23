within SFC.Functions;

impure function get_real_variable
  extends Modelica.Icons.Function;
 input Integer handle;
 output Real value;
 external "C" value = get_real_variable(handle) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end get_real_variable;
