within ProvaInOut.actions_mgmt;

model real_set
  parameter String name = "bool1";

  Modelica.Blocks.Interfaces.RealInput value annotation(
    Placement(visible = true, transformation(origin = {-130, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

  Integer handle;

equation
  SFC.Functions.set_real_variable(handle,value);
algorithm
  when initial() then
    handle := SFC.Functions.register_real_variable(name);
  end when;

annotation(
    Icon(graphics = {Rectangle(fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-3, 50}, extent = {{-59, 58}, {59, -58}}, textString = "Real"), Text(origin = {-3, -34}, extent = {{-45, 42}, {45, -42}}, textString = "SET")}));
end real_set;