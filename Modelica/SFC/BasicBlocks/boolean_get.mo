within SFC.BasicBlocks;

model boolean_get
  parameter String name = "bool1";

  Modelica.Blocks.Interfaces.BooleanOutput value annotation(
    Placement(visible = true, transformation(origin = {-130, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

  Integer handle;

equation
  value = SFC.Functions.get_boolean_variable(handle);
algorithm
  when initial() then
    handle := SFC.Functions.register_boolean_variable(name);
  end when;


annotation(
    Icon(graphics = {Rectangle(fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-3, 43}, extent = {{-73, 61}, {73, -61}}, textString = "Boolean"), Text(origin = {-3, -34}, extent = {{-45, 42}, {45, -42}}, textString = "GET")}));
end boolean_get;