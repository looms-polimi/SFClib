within SFC.Functions;

function set_boolVar
 input String string;
 input Boolean bool_value;
 output Integer y;
 external "C" y = set_bool(string, bool_value) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end set_boolVar;