within ExternalEvents.Functions;

function register
 input String iname;
 output Integer id;
 external "C" id=register_me(iname) annotation(
          Include = "#include \"event_functions.c\"");
end register;