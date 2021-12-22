within ProvaInOut.Example_PLC_level_001;

model Cyclic_object_02
  ProvaInOut.actions_mgmt.S_action a1s(aname = "relay_cmd_02") annotation(
    Placement(visible = true, transformation(origin = {30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.R_action a1r(aname = "relay_cmd_02") annotation(
    Placement(visible = true, transformation(origin = {34, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFC.BasicBlocks.CyclicGroup cyclicGroup(period = 0.25) annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-10, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c10(y = rg1.value < 0.3) annotation(
    Placement(visible = true, transformation(origin = {40, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.BooleanExpression c01(y = rg1.value > 0.7) annotation(
    Placement(visible = true, transformation(origin = {40, 20}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  actions_mgmt.real_get rg1(name = "process_var_02")  annotation(
    Placement(visible = true, transformation(origin = {-84, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-10, 40}, {-10, 22}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-10, 18}, {-10, 0}}));
  connect(S0.X, a1s.phase_active) annotation(
    Line(points = {{2, 50}, {18, 50}}, color = {255, 0, 255}));
  connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-10, -20}, {-10, -38}}));
  connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-10, -42}, {-10, -52}, {-52, -52}, {-52, 70}, {-10, 70}, {-10, 60}}));
  connect(T10.C, c10.y) annotation(
    Line(points = {{2, -40}, {18, -40}}, color = {255, 0, 255}));
  connect(T01.C, c01.y) annotation(
    Line(points = {{2, 20}, {18, 20}}, color = {255, 0, 255}));
  connect(S1.X, a1r.phase_active) annotation(
    Line(points = {{2, -10}, {22, -10}}, color = {255, 0, 255}));
protected
  annotation(
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.01),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Cyclic_object_02;