within SFC.Functions;

function C_register_bool
 input String string;
 input Integer bool_01;
 output Integer y;
 external "C" y = register_bool(string, bool_01) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end C_register_bool;