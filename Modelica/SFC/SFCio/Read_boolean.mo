within SFC.SFCio;

model Read_boolean
  extends Icons.SFCrw;
  parameter String variable_name = "bool1";

  Modelica.Blocks.Interfaces.BooleanOutput y annotation(
    Placement(visible = true, transformation(origin = {-122, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {220, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

  Integer handle;

equation
  y = SFC.Functions.get_boolean_variable(handle);
algorithm
  when initial() then
    handle := SFC.Functions.register_boolean_variable(variable_name);
  end when;



annotation(
    Icon(graphics = {Text(origin = {2, -1}, extent = {{-198, 19}, {198, -19}}, textString = "%variable_name")}));
end Read_boolean;