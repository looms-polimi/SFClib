within SFC.SFCio;

model Write_real
  extends Icons.SFCrw;
  parameter String variable_name = "real1";

  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-130, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-220, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

  Integer handle;

equation
  SFC.Functions.set_real_variable(handle,u);
algorithm
  when initial() then
    handle := SFC.Functions.register_real_variable(variable_name);
  end when;

annotation(
    Icon(graphics = {Text(origin = {2, -1}, extent = {{-198, 19}, {198, -19}}, textString = "%variable_name", horizontalAlignment = TextAlignment.Left)}));
end Write_real;