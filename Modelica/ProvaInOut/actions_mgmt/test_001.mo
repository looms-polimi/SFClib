within ProvaInOut.actions_mgmt;

model test_001
  N_action a1 annotation(
    Placement(visible = true, transformation(origin = {-6, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.N_action a2 annotation(
    Placement(visible = true, transformation(origin = {-6, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression be1 annotation(
    Placement(visible = true, transformation(origin = {-82, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression be2 annotation(
    Placement(visible = true, transformation(origin = {-78, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression be3 annotation(
    Placement(visible = true, transformation(origin = {-66, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.N_action a3(Action_name = "action2")  annotation(
    Placement(visible = true, transformation(origin = {6, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(be1.y, a1.phase_active) annotation(
    Line(points = {{-70, 34}, {-18, 34}, {-18, 36}}, color = {255, 0, 255}));
  connect(be2.y, a2.phase_active) annotation(
    Line(points = {{-66, -2}, {-18, -2}}, color = {255, 0, 255}));
  connect(be3.y, a3.phase_active) annotation(
    Line(points = {{-54, -34}, {-6, -34}}, color = {255, 0, 255}));
end test_001;