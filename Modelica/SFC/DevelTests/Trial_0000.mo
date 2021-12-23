within SFC.DevelTests;

model Trial_0000
  extends Modelica.Icons.Example;
   SFC.SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-70, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-70, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C01(y = S0.t > 1)  annotation(
    Placement(visible = true, transformation(origin = {-27, 20}, extent = {{13, -10}, {-13, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C10(y = S1.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-19, -43}, extent = {{21, -13}, {-21, 13}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-70, 40}, {-70, 40}, {-70, 22}, {-70, 22}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-70, 18}, {-70, 18}, {-70, 0}, {-70, 0}}));
  connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-70, -20}, {-70, -20}, {-70, -38}, {-70, -38}}));
  connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-70, -42}, {-70, -42}, {-70, -56}, {-104, -56}, {-104, 72}, {-70, 72}, {-70, 60}, {-70, 60}}));
  connect(T01.C, C01.y) annotation(
    Line(points = {{-60, 20}, {-41, 20}}, color = {255, 0, 255}));
  connect(T10.C, C10.y) annotation(
    Line(points = {{-60, -40}, {-50.5, -40}, {-50.5, -43}, {-42, -43}}, color = {255, 0, 255}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end Trial_0000;
