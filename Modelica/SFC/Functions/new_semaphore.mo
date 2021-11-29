within SFC.Functions;

function new_semaphore
 output Integer y;
 external "C" y = new_semaphore() annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end new_semaphore;
