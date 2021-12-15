within SFC.Functions;

function set_realVar
 input String string;
 input Real real_value;
 output Integer y;
 external "C" y = set_real(string, real_value) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end set_realVar;