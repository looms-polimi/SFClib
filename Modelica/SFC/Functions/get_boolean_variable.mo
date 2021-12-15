within SFC.Functions;

function get_boolean_variable
 input Integer handle;
 output Boolean value;
 external "C" value = get_boolean_variable(handle) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end get_boolean_variable;