within SFC.Utilities;

model System_logger
  parameter String logFileName = "logger.log" "log file name";
  parameter Boolean log_on = false "logging active";
  Integer Blocked(start = 0);
  //Integer BlockReq(start = 0);

algorithm
  when initial() then
    if log_on then
      Modelica.Utilities.Files.remove(logFileName);
      Modelica.Utilities.Streams.print("*** LOG START");
    end if;
  end when;
  Blocked := Utilities.sema(3);
  when terminal() then
    if log_on then
      Modelica.Utilities.Streams.print("*** LOG END");
      Modelica.Utilities.Streams.close(logFileName);
    end if;
  end when;
  annotation(
  defaultComponentName = "system_logger",
    defaultComponentPrefixes = "inner",
    missingInnerMessage = "Your model is using an outer \"system_logger\" component but an inner \"system_logger\" component is not defined.",
    Icon,
  Documentation(info = "<html><head></head><body>Logger di dati per conoscere attivazione/disattivazione step e transizioni</body></html>"));
end System_logger;