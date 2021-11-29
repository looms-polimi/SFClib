within SFC.Functions;

function get_semaphore
 input Integer handle;
 input Real t;
 input Real phase;
 input Real period;
 output Real y;
 external "C" y = get_semaphore(handle, t, phase, period) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="semaphore",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"semaphore.h\"");
end get_semaphore;
