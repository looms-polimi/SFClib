within SFC.BasicBlocks;

model InitialStepNI "Initial Step with No Input"
  
  SFC.Interfaces.StepOutput OUT annotation(
    Placement(visible = true, transformation(origin = {-116, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  
  Modelica.Blocks.Interfaces.BooleanOutput X annotation(
    Placement(visible = true, transformation(origin = {-34, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, -3.55271e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
   discrete Real duration_last_activity(start=0,fixed=true);
  //discrete Integer act_count;
  Real t;
equation
  t = if X then time else duration_last_activity;
  OUT.active=X;
algorithm
  when change(OUT.fire) then X:=false; duration_last_activity := t; end when;
initial algorithm
  X := true;
//act_count := 1;
// since this step has no input, once deactivated it will not be activated. The duration of last activation is then the time elapsed until OUT.fire == true
//CODICE VERSIONE CON REINIT()
//  Real t(start=0,fixed=true);
//  Boolean support;   // support variable used to make the system "active output" starts from 0
//equation
//  der(t) = if support then 1 else 0;
//  OUT.active=X;
//// at the beginning output=X (so the output is 0) and since support=true the time strats counting. So the state moves from 0 to 1 at the first iteration because t>0 is instantly satisfied.
//algorithm
//  when t > 0 then X := true; end when;
//  when change(OUT.fire) then X:=false; support:=false; reinit(t,0); end when;
//initial algorithm
//  support := true;
//  X := false;
////IN.fire := false;

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-3, 3}, extent = {{-57, 35}, {57, -35}}, textString = "%name"), Rectangle(origin = {-1, 0}, extent = {{-89, 90}, {89, -90}})}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><div style=\"text-align: justify;\"><span style=\"font-size: 12px;\">The main features and the structure of this step are illustrated in the <b>Initial</b></span><span style=\"font-size: 12px;\"><b>Step</b></span><span style=\"font-size: 12px;\">&nbsp;block of the library.&nbsp;</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><div><i><u>InitialStepNI</u></i> is used when the initial step is defined as a state that the system can't reach under any condition during the SFC evolution (the block has no input).</div><div style=\"font-size: 12px; text-align: start;\"><br></div></div></body></html>"));

end InitialStepNI;
