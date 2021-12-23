within SFC.Functions;

impure function set_debug_level
  extends Modelica.Icons.Function;
 input Integer debug_level;
 external "C" set_debug_level(debug_level) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
 annotation(
    Icon,
    Documentation(info = "<html><head></head><body><br></body></html>"));
end set_debug_level;
