within SFC.Functions;

function register_boolean_variable
 input String name;
 output Integer handle;
 external "C" handle = register_boolean_variable(name) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end register_boolean_variable;