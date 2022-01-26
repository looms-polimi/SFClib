within ProvaInOut.actions_mgmt;

model R_action
  parameter String aname = "action1";

  Modelica.Blocks.Interfaces.BooleanInput phase_active annotation(
    Placement(visible = true, transformation(origin = {-130, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-200, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

  Integer handle;
  
  
initial equation
  SFC.Functions.set_boolean_variable(handle,phase_active);
    
algorithm
  when initial() then
    handle := SFC.Functions.register_boolean_variable(aname);
  end when;
  when phase_active then
    SFC.Functions.set_boolean_variable(handle,false);
  end when;

annotation(
    Icon(graphics = {Rectangle(origin = {-150, 0}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-30, 40}, {30, -40}}), Text(origin = {-152, 0}, extent = {{-34, 42}, {34, -42}}, textString = "R"), Rectangle(origin = {52, 0}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-172, 40}, {172, -40}}), Text(origin = {53, 2}, extent = {{-171, 16}, {171, -16}}, textString = "%aname", horizontalAlignment = TextAlignment.Left)}));
end R_action;