within ExternalEvents.Functions;

function new_semaphore
 output Integer y;
 external "C" y = new_semaphore() annotation(
      LibraryDirectory="modelica://ExternalEvents/Resources/Include/",
      Library="semaphore",
      IncludeDirectory="modelica://ExternalEvents/Resources/Include/",
      Include="#include \"semaphore.h\"");
end new_semaphore;