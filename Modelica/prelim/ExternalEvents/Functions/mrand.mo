within ExternalEvents.Functions;

function mrand
 output Real y;
 external "C" y = mrand() annotation(
          Include = "#include \"event_functions.c\"");
end mrand;