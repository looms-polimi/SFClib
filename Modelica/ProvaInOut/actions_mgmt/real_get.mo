within ProvaInOut.actions_mgmt;

model real_get
  parameter String name = "real1";

  Modelica.Blocks.Interfaces.RealOutput value annotation(
    Placement(visible = true, transformation(origin = {-130, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

  Integer handle;

equation
  value = SFC.Functions.get_real_variable(handle);
algorithm
  when initial() then
    handle := SFC.Functions.register_real_variable(name);
  end when;


annotation(
    Icon(graphics = {Rectangle(origin = {-70, 0},fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-30, 40}, {30, -40}}), Rectangle(origin = {30, 0}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-70, 40}, {70, -40}})}));
end real_get;