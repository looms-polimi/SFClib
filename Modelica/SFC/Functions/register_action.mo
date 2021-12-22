within SFC.Functions;

function register_action
 input String name;
 output Integer handle;
 external "C" handle = register_action(name) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end register_action;