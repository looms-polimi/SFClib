within SFC.Functions;

function register_real_variable
 input String name;
 output Integer handle;
 external "C" handle = register_real_variable(name) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end register_real_variable;