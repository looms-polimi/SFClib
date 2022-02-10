within SFC.Tests;

model Test_activation_inconsistency
  SFC.SFCelements.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-10, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T12 annotation(
    Placement(visible = true, transformation(origin = {-10, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T23 annotation(
    Placement(visible = true, transformation(origin = {-10, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-10, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T30 annotation(
    Placement(visible = true, transformation(origin = {-10, -140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.01)  annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c1(y = true)  annotation(
    Placement(visible = true, transformation(origin = {80, 40}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c2(y = S3.t >= 0.2) annotation(
    Placement(visible = true, transformation(origin = {80, -140}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-10, 60}, {-10, 42}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-10, 38}, {-10, 20}}));
  connect(S1.OUT, T12.IN) annotation(
    Line(points = {{-10, 0}, {-10, -18}}));
  connect(T12.OUT, S2.IN) annotation(
    Line(points = {{-10, -22}, {-10, -40}}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{-10, -60}, {-10, -78}}));
  connect(T23.OUT, S3.IN) annotation(
    Line(points = {{-10, -82}, {-10, -100}}));
  connect(S3.OUT, T30.IN) annotation(
    Line(points = {{-10, -120}, {-10, -138}}));
  connect(T30.OUT, S0.IN) annotation(
    Line(points = {{-10, -142}, {-10, -152}, {-40, -152}, {-40, 90}, {-10, 90}, {-10, 80}}));
  connect(c1.y, T01.C) annotation(
    Line(points = {{58, 40}, {2, 40}}, color = {255, 0, 255}));
  connect(c1.y, T12.C) annotation(
    Line(points = {{58, 40}, {40, 40}, {40, -20}, {2, -20}}, color = {255, 0, 255}));
  connect(c1.y, T23.C) annotation(
    Line(points = {{58, 40}, {40, 40}, {40, -80}, {2, -80}}, color = {255, 0, 255}));
  connect(c2.y, T30.C) annotation(
    Line(points = {{58, -140}, {2, -140}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end Test_activation_inconsistency;