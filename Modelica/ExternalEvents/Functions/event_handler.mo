within ExternalEvents.Functions;

function event_handler
 input Integer id;
 input Real t;
 external "C" event_handler(id,t) annotation(
          Include = "#include \"event_functions.c\"");
end event_handler;