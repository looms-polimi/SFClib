within ExternalEvents.Functions;

function get_semaphore
 input Integer handle;
 input Real t;
 input Real phase;
 input Real period;
 output Real y;
 external "C" y = get_semaphore(handle, t, phase, period) annotation(
      LibraryDirectory="modelica://ExternalEvents/Resources/Include/",
      Library="semaphore",
      IncludeDirectory="modelica://ExternalEvents/Resources/Include/",
      Include="#include \"semaphore.h\"");
end get_semaphore;