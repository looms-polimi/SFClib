within ProvaInOut.actions_mgmt;

model N_action
  parameter String Action_name = "action1";

  Modelica.Blocks.Interfaces.BooleanInput phase_active annotation(
    Placement(visible = true, transformation(origin = {-130, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

  Integer handle;

equation

algorithm
  when initial() then
    handle := SFC.Functions.register_bool(Action_name,false);
  end when;

annotation(
    Icon(graphics = {Rectangle(origin = {-70, 0},fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-30, 40}, {30, -40}}), Text(origin = {-72, 0}, extent = {{-34, 42}, {34, -42}}, textString = "N"), Rectangle(origin = {30, 0}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-70, 40}, {70, -40}})}));
end N_action;