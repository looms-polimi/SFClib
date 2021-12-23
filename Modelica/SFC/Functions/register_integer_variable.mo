within SFC.Functions;

impure function register_integer_variable
  extends Modelica.Icons.Function;
 input String name;
 output Integer handle;
 external "C" handle = register_integer_variable(name) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end register_integer_variable;
