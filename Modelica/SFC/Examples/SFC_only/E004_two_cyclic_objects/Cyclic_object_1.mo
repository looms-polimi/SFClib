within SFC.Examples.SFC_only.E004_two_cyclic_objects;

model Cyclic_object_1
  extends Modelica.Icons.Example;
  SFCelements.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFCelements.CyclicGroup cyclicGroup(period = 0.01) annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-10, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c10(y = S1.t > 10) annotation(
    Placement(visible = true, transformation(origin = {40, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.BooleanExpression c01(y = S0.t > 10) annotation(
    Placement(visible = true, transformation(origin = {40, 20}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  SFC.SFCelements.N_action an1(action_name = "cmd12")  annotation(
    Placement(visible = true, transformation(origin = {40, 50}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-10, 40}, {-10, 22}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-10, 18}, {-10, 0}}));
  connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-10, -20}, {-10, -38}}));
  connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-10, -42}, {-10, -52}, {-52, -52}, {-52, 70}, {-10, 70}, {-10, 60}}));
  connect(T10.C, c10.y) annotation(
    Line(points = {{2, -40}, {18, -40}}, color = {255, 0, 255}));
  connect(T01.C, c01.y) annotation(
    Line(points = {{2, 20}, {18, 20}}, color = {255, 0, 255}));
  connect(S0.X, an1.phase_active) annotation(
    Line(points = {{2, 50}, {18, 50}}, color = {255, 0, 255}));
end Cyclic_object_1;