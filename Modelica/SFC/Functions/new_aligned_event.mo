within SFC.Functions;

impure function new_aligned_event
  extends Modelica.Icons.Function;
 output Integer y;
 external "C" y = new_aligned_event() annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
 annotation(
    Icon,
    Documentation(info = "<html><head></head><body><br></body></html>"));
end new_aligned_event;
