within SFC.Functions;

impure function on_phase_deactivation
  extends Modelica.Icons.Function;
 input Integer handle;
 input Integer qualifier;
 output Boolean on;
 external "C" on=on_phase_deactivation(handle, qualifier) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end on_phase_deactivation;
