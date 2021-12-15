within SFC.Functions;

function get_real_variable
 input Integer handle;
 output Real value;
 external "C" value = get_real_variable(handle) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end get_real_variable;