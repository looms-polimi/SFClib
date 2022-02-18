within SFC.Examples.SFC_and_CT_systems.E001_CTSys;

model Cylic_object_1
  extends Icons.Example;
  SFC.SFCelements.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {6, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_real rpv(variable_name = "pv") annotation(
    Placement(visible = true, transformation(origin = {-54, 34}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c01(y = rpv.y >= 0.7) annotation(
    Placement(visible = true, transformation(origin = {48, 4}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c10(y = rpv.y <= 0.3) annotation(
    Placement(visible = true, transformation(origin = {46, -56}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {6, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action acs1(action_name = "cs") annotation(
    Placement(visible = true, transformation(origin = {56, 34}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1(initialStep = false) annotation(
    Placement(visible = true, transformation(origin = {6, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {6, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.25) annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T10.C, c10.y) annotation(
    Line(points = {{18, -56}, {36, -56}}, color = {255, 0, 255}));
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{6, 24}, {6, 6}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{6, 2}, {6, -16}}));
  connect(S1.OUT, T10.IN) annotation(
    Line(points = {{6, -36}, {6, -54}}));
  connect(S0.X, acs1.phase_active) annotation(
    Line(points = {{18, 34}, {34, 34}}, color = {255, 0, 255}));
  connect(T10.OUT, S0.IN) annotation(
    Line(points = {{6, -58}, {6, -68}, {-24, -68}, {-24, 54}, {6, 54}, {6, 44}}));
  connect(c01.y, T01.C) annotation(
    Line(points = {{38, 4}, {18, 4}}, color = {255, 0, 255}));
end Cylic_object_1;