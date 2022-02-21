within SFC.Examples.SFC_and_CT_systems.E001_CTSys;

model Cyclic_object_2
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.BooleanExpression c23(y = S2.t >= 12) annotation(
    Placement(visible = true, transformation(origin = {30, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFCelements.N_action acs2(action_name = "cs") annotation(
    Placement(visible = true, transformation(origin = {40, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFCelements.Step S2(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Transition T32 annotation(
    Placement(visible = true, transformation(origin = {-10, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Step S3(initialStep = false) annotation(
    Placement(visible = true, transformation(origin = {-10, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c32(y = S3.t >= 0.5) annotation(
    Placement(visible = true, transformation(origin = {30, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFCelements.Transition T23 annotation(
    Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.25) annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T23.OUT, S3.IN) annotation(
    Line(points = {{-10, -12}, {-10, -30}}));
  connect(T32.C, c32.y) annotation(
    Line(points = {{2, -70}, {20, -70}}, color = {255, 0, 255}));
  connect(c23.y, T23.C) annotation(
    Line(points = {{19, -10}, {1, -10}}, color = {255, 0, 255}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{-10, 10}, {-10, -8}}));
  connect(S3.X, acs2.phase_active) annotation(
    Line(points = {{2, -40}, {18, -40}}, color = {255, 0, 255}));
  connect(S3.OUT, T32.IN) annotation(
    Line(points = {{-10, -50}, {-10, -68}}));
  connect(T32.OUT, S2.IN) annotation(
    Line(points = {{-10, -72}, {-10, -82}, {-40, -82}, {-40, 40}, {-10, 40}, {-10, 30}}));
end Cyclic_object_2;