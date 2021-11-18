within ExternalEvents.Functions;

function brectpulse
  input Real t;
  input Real dur;
  output Boolean y;
algorithm
  y := bstep(t) and not bstep(t-dur);
end brectpulse;