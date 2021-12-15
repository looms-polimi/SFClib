within SFC.Functions;

function query_semaphore
 input Integer handle;
 output Real y;
 external "C" y = query_semaphore(handle) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end query_semaphore;