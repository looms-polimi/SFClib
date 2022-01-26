within ProvaInOut.actions_mgmt;

model test_001
  ProvaInOut.actions_mgmt.N_action a1 annotation(
    Placement(visible = true, transformation(origin = {2, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.N_action a2 annotation(
    Placement(visible = true, transformation(origin = {-2, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression be1 annotation(
    Placement(visible = true, transformation(origin = {-78, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression be2 annotation(
    Placement(visible = true, transformation(origin = {-74, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression be3 annotation(
    Placement(visible = true, transformation(origin = {-62, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.N_action a3(name = "action2")  annotation(
    Placement(visible = true, transformation(origin = {10, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = sin(10 * time) > 0) annotation(
    Placement(visible = true, transformation(origin = {-64, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  boolean_set bs1(name = "action1") annotation(
    Placement(visible = true, transformation(origin = {12, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  boolean_get bg1(name = "action1") annotation(
    Placement(visible = true, transformation(origin = {12, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(be1.y, a1.phase_active) annotation(
    Line(points = {{-67, 70}, {-10, 70}}, color = {255, 0, 255}));
  connect(be2.y, a2.phase_active) annotation(
    Line(points = {{-63, 34}, {-15, 34}}, color = {255, 0, 255}));
  connect(be3.y, a3.phase_active) annotation(
    Line(points = {{-51, 2}, {-3, 2}}, color = {255, 0, 255}));
  connect(booleanExpression.y, bs1.value) annotation(
    Line(points = {{-52, -60}, {-30, -60}, {-30, -48}, {0, -48}}, color = {255, 0, 255}));
end test_001;