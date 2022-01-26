within ProvaInOut.actions_mgmt;

model S_action
  parameter String aname = "action1";

  Modelica.Blocks.Interfaces.BooleanInput phase_active annotation(
    Placement(visible = true, transformation(origin = {-130, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-198, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

  Integer handle;
  
  
initial equation
  SFC.Functions.set_boolean_variable(handle,phase_active);
    
algorithm
  when initial() then
    handle := SFC.Functions.register_boolean_variable(aname);
  end when;
  when phase_active then
    SFC.Functions.set_boolean_variable(handle,true);
  end when;

annotation(
    Icon(graphics = {Rectangle(origin = {-148, 0}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-30, 40}, {30, -40}}), Text(origin = {-150, 0}, extent = {{-34, 42}, {34, -42}}, textString = "S"), Rectangle(origin = {53, 0}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-171, 40}, {171, -40}}), Text(origin = {54, 2}, extent = {{-170, 16}, {170, -16}}, textString = "%aname", horizontalAlignment = TextAlignment.Left)}));
end S_action;