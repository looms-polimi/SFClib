within SFC.Functions;

function schedule_next_aligned_event
  extends Modelica.Icons.Function;
 input Integer handle;
 input Real t;
 input Real phase;
 input Real period;
 output Real y;
 external "C" y = schedule_next_aligned_event(handle, t, phase, period) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end schedule_next_aligned_event;
