within SFC.Functions;

impure function set_real_variable
  extends Modelica.Icons.Function;
 input Integer handle;
 input Real value;
 external "C" set_real_variable(handle, value) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end set_real_variable;
