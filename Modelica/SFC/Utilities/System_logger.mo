within SFC.Utilities;

model System_logger
  parameter String logFileName = "logger.log" "log file name";
  parameter Boolean log_on = false "logging active";
algorithm
  when initial() then
    if log_on then
      Modelica.Utilities.Files.remove(logFileName);
      Modelica.Utilities.Streams.print("*** LOG START");
    end if;
  end when;
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
    Icon(graphics = {Ellipse(origin = {-5, -55}, fillColor = {28, 113, 216}, fillPattern = FillPattern.Sphere, lineThickness = 0.5, extent = {{-65, 9}, {65, -9}}), Rectangle(origin = {-5, -41}, fillColor = {28, 113, 216}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-65, 15}, {65, -15}}), Ellipse(origin = {-5, -27}, fillColor = {28, 113, 216}, fillPattern = FillPattern.Sphere, lineThickness = 0.5, extent = {{-65, 9}, {65, -9}}), Ellipse(origin = {-5, -17}, fillColor = {28, 113, 216}, fillPattern = FillPattern.Sphere, lineThickness = 0.5, extent = {{-65, 9}, {65, -9}}), Rectangle(origin = {-5, -1}, fillColor = {28, 113, 216}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-65, 15}, {65, -15}}), Ellipse(origin = {-5, 13}, fillColor = {28, 113, 216}, fillPattern = FillPattern.Sphere, lineThickness = 0.5, extent = {{-65, 9}, {65, -9}}), Ellipse(origin = {-5, 23}, fillColor = {28, 113, 216}, fillPattern = FillPattern.Sphere, lineThickness = 0.5, extent = {{-65, 9}, {65, -9}}), Rectangle(origin = {-5, 39}, fillColor = {28, 113, 216}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-65, 15}, {65, -15}}), Ellipse(origin = {-5, 53}, fillColor = {28, 113, 216}, fillPattern = FillPattern.Sphere, lineThickness = 0.5, extent = {{-65, 9}, {65, -9}})}),
  Documentation(info = "<html><head></head><body>Logger di dati per conoscere attivazione/disattivazione step e transizioni</body></html>"));
end System_logger;