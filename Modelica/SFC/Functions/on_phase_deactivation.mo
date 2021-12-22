within SFC.Functions;

function on_phase_deactivation
 input Integer handle;
 input Integer qualifier "0 N, 1 S, 2 R";
 output Boolean on;
 external "C" on=on_phase_deactivation(handle, qualifier) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end on_phase_deactivation;