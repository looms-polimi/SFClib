within ExternalEvents.Functions;

function bstep
  input Real t;
  output Boolean y;
algorithm
  y := t>=0;
end bstep;