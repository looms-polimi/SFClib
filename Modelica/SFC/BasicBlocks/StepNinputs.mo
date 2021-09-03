within SFC.BasicBlocks;

model StepNinputs "Step with n inputs"
SFC.Interfaces.StepInput IN[n] annotation(
    Placement(visible = true, transformation(origin = {-26, 116}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.StepOutput OUT annotation(
    Placement(visible = true, transformation(origin = {-116, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput X annotation(
    Placement(visible = true, transformation(origin = {-34, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, -3.55271e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
 discrete Real t_last_activation(start=0,fixed=true);
  discrete Real duration_last_activity(start=0,fixed=true);
  discrete Integer act_count;
  Real t;
  parameter Integer n=1;
equation
  t = if X then time - t_last_activation else duration_last_activity;
  OUT.active=X;
algorithm
for i in 1:n loop
  when change(IN[i].fire) then
    X:=true;
    t_last_activation:= time;
    act_count := act_count+1;
  end when;
end for;

when change(OUT.fire) then 
  X:=false; 
  duration_last_activity := t; 
end when;
initial algorithm
  X := false;
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Rectangle( fillColor = {185, 185, 185},fillPattern = FillPattern.Solid, extent = {{-94, 94}, {94, -94}}), Text(origin = {3, 7}, extent = {{-57, 35}, {57, -35}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><div style=\"text-align: justify;\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div style=\"text-align: justify; \">The main features and the structure of a step are illustrated in the <b>Step</b> block of the library and apply for all the steps of a system.&nbsp;</div><div style=\"text-align: justify; \"><div style=\"text-align: start;\"><div style=\"text-align: justify;\"><div><br></div><div><i><u>StepNinputs</u></i> is a variation of the classical Step, because in some cases a step can have more than one input. The block has an additional internal parameter<b> n</b>, that can be manually set to the number of inputs needed.</div></div></div></div></div></body></html>"));

end StepNinputs;
