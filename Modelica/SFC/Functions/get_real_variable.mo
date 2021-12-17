within SFC.Functions;

function get_real_variable
 input Integer handle;
 output Real value;
 external "C" value = get_real_variable(handle) annotation(
      LibraryDirectory="modelica://SFC/Resources/Source/",
      Library="sfc",
      IncludeDirectory="modelica://SFC/Resources/Source/",
      Include="#include \"sfc.h\"");
end get_real_variable;