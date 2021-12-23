within SFC.Functions;

impure function register_real_variable
  extends Modelica.Icons.Function;
 input String name;
 output Integer handle;
 external "C" handle = register_real_variable(name) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end register_real_variable;
