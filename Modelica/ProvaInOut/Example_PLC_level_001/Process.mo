within ProvaInOut.Example_PLC_level_001;

model Process
  Modelica.Blocks.Continuous.TransferFunction P1(a = {1, 1}, b = {1})  annotation(
    Placement(visible = true, transformation(origin = {-10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P2(a = {5, 1}, b = {1})  annotation(
    Placement(visible = true, transformation(origin = {-10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.boolean_get bg1(name = "relay_cmd_01")  annotation(
    Placement(visible = true, transformation(origin = {-70, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.boolean_get bg2(name = "relay_cmd_02")  annotation(
    Placement(visible = true, transformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.real_set rs1(name = "process_var_01")  annotation(
    Placement(visible = true, transformation(origin = {30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.real_set rs2(name = "process_var_02")  annotation(
    Placement(visible = true, transformation(origin = {30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression u1(y = if bg1.value then 1 else 0)  annotation(
    Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression u2(y = if bg2.value then 1 else 0)  annotation(
    Placement(visible = true, transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(P1.y, rs1.value) annotation(
    Line(points = {{2, 30}, {18, 30}}, color = {0, 0, 127}));
  connect(P2.y, rs2.value) annotation(
    Line(points = {{2, -30}, {18, -30}}, color = {0, 0, 127}));
  connect(u1.y, P1.u) annotation(
    Line(points = {{-38, 30}, {-22, 30}}, color = {0, 0, 127}));
  connect(u2.y, P2.u) annotation(
    Line(points = {{-38, -30}, {-22, -30}}, color = {0, 0, 127}));
end Process;