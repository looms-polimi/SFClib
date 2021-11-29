within SFC.Utilities;

function sema "semaphor to handle Tcycle in transitions"
  input Integer opcode;
  output Integer result;
  external "C" result=test_static(opcode)
  annotation(Include="#include \"test_static.c\"");
end sema;