within SFC.Functions;

function register_real
 input String string;
 input Real real_value;
 output Integer y;
 external "C" y = register_real(string, real_value) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end register_real;