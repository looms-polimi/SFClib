within SFC.Functions;

function set_boolean_variable
 input Integer handle;
 input Boolean value;
 external "C" set_boolean_variable(handle, value) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end set_boolean_variable;