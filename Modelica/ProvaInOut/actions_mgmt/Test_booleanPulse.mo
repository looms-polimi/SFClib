within ProvaInOut.actions_mgmt;

model Test_booleanPulse
  Modelica.Blocks.Sources.BooleanPulse Cpulse(period = 2, width = 30) annotation(
    Placement(visible = true, transformation(origin = {-62, 14}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));

  Boolean cc(start= false);
  SFC.BasicBlocks.Condition condition(y = Cpulse.y)  annotation(
    Placement(visible = true, transformation(origin = {12, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

  //C = Cpulse.y;
  //when Cpulse.y then C = true; end when;
  if condition.y then cc = true; else cc = false; end if; 

end Test_booleanPulse;