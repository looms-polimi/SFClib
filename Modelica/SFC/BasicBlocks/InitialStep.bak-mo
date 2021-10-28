within SFC.BasicBlocks;

model InitialStep "Initial Step of an SFC"
  SFC.Interfaces.StepInput IN annotation(
    Placement(visible = true, transformation(origin = {-26, 116}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.StepOutput OUT annotation(
    Placement(visible = true, transformation(origin = {0, -70}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput X annotation(
    Placement(visible = true, transformation(origin = {-34, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, -3.55271e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  discrete Real t_last_activation(start=0,fixed=true);
  discrete Real duration_last_activity(start=0,fixed=true);
  discrete Integer act_count;
  Real t(start=0);
equation
  t = if X then time - t_last_activation else duration_last_activity;
  OUT.active=X;
algorithm
  when change(IN.fire) then
    X:=true;
    t_last_activation:= time;
    act_count := act_count+1;
  end when;
  when change(OUT.fire) then
    X:=false;
    duration_last_activity := t;
  end when;
initial algorithm
  X := true;
  act_count := 1;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-3, 3}, extent = {{-57, 35}, {57, -35}}, textString = "%name"), Rectangle(origin = {-1, 0}, extent = {{-89, 90}, {89, -90}})}, coordinateSystem(initialScale = 0.1)),
    Documentation(info = "<html><head></head><body><span style=\"text-align: justify;\">The main features and the structure of a step are illustrated in the </span><b style=\"text-align: justify;\">Step</b><span style=\"text-align: justify;\"> block of the library and apply for all the steps of a system.&nbsp;
</span><div><span style=\"text-align: justify;\"><br></span></div><div style=\"text-align: start;\"><span style=\"text-align: justify;\">In addition, a step can be either initial or not, and the <i><u>InitialStep </u></i>block represents a generical starting step of a system.&nbsp;</span><span style=\"text-align: justify;\">Compared to a Step, an InitialStep is initialised setting </span><u style=\"text-align: justify;\">X=true</u><span style=\"text-align: justify;\"> and </span><u style=\"text-align: justify;\">t=0</u><span style=\"text-align: justify;\">, it means that when the simulation starts the step became active and the time variable starts to count the activation time.</span></div></body></html>"));
end InitialStep;