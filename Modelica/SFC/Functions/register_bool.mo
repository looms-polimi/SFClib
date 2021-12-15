within SFC.Functions;

function register_bool
 input String string;
 input Boolean bool_value;
 output Integer y;
 external "C" y = register_bool(string, bool_value) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end register_bool;