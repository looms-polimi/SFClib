within ProvaInOut.actions_mgmt;

model test_002_SFC_actions_N_SR
  ProvaInOut.actions_mgmt.N_action a1(name = "action_001")  annotation(
    Placement(visible = true, transformation(origin = {-30, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.N_action a2(name = "action_001")  annotation(
    Placement(visible = true, transformation(origin = {-30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.boolean_get bg1(name = "action_001") annotation(
    Placement(visible = true, transformation(origin = {120, 2.66454e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.BasicBlocks.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-70, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-70, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-70, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-70, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S4 annotation(
    Placement(visible = true, transformation(origin = {-70, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S5 annotation(
    Placement(visible = true, transformation(origin = {-70, -140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T12 annotation(
    Placement(visible = true, transformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T23 annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T34 annotation(
    Placement(visible = true, transformation(origin = {-70, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T45 annotation(
    Placement(visible = true, transformation(origin = {-70, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T50 annotation(
    Placement(visible = true, transformation(origin = {-70, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-70, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c01(y = S0.t >= 1)  annotation(
    Placement(visible = true, transformation(origin = {-20, 130}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.BooleanExpression c12(y = S1.t >= 1)  annotation(
    Placement(visible = true, transformation(origin = {-20, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.BooleanExpression c23(y = S2.t >= 1)  annotation(
    Placement(visible = true, transformation(origin = {-20, 10}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.BooleanExpression c34(y = S3.t >= 1)  annotation(
    Placement(visible = true, transformation(origin = {-20, -50}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.BooleanExpression c45(y = S4.t >= 1)  annotation(
    Placement(visible = true, transformation(origin = {-20, -110}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.BooleanExpression c50(y = S5.t >= 1)  annotation(
    Placement(visible = true, transformation(origin = {-20, -170}, extent = {{-20, -10}, {20, 10}}, rotation = 180)));
  inner SFC.BasicBlocks.CyclicGroup cyclicGroup(period = 0.01)  annotation(
    Placement(visible = true, transformation(origin = {-170, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.S_action sa1(name = "actionSR01")  annotation(
    Placement(visible = true, transformation(origin = {-30, 152}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.R_action ar01(name = "actionSR01")  annotation(
    Placement(visible = true, transformation(origin = {-30, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ProvaInOut.actions_mgmt.boolean_get bg2(name = "actionSR01")  annotation(
    Placement(visible = true, transformation(origin = {130, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-70, 150}, {-70, 132}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-70, 128}, {-70, 110}}));
  connect(S1.OUT, T12.IN) annotation(
    Line(points = {{-70, 90}, {-70, 72}}));
  connect(T12.OUT, S2.IN) annotation(
    Line(points = {{-70, 68}, {-70, 50}}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{-70, 30}, {-70, 12}}));
  connect(S3.OUT, T34.IN) annotation(
    Line(points = {{-70, -30}, {-70, -48}}));
  connect(T34.OUT, S4.IN) annotation(
    Line(points = {{-70, -52}, {-70, -70}}));
  connect(S4.OUT, T45.IN) annotation(
    Line(points = {{-70, -90}, {-70, -108}}));
  connect(T45.OUT, S5.IN) annotation(
    Line(points = {{-70, -112}, {-70, -130}}));
  connect(S5.OUT, T50.IN) annotation(
    Line(points = {{-70, -150}, {-70, -168}}));
  connect(T50.OUT, S0.IN) annotation(
    Line(points = {{-70, -172}, {-70, -190}, {-100, -190}, {-100, 190}, {-70, 190}, {-70, 170}}));
  connect(T01.C, c01.y) annotation(
    Line(points = {{-58, 130}, {-42, 130}}, color = {255, 0, 255}));
  connect(T12.C, c12.y) annotation(
    Line(points = {{-58, 70}, {-42, 70}}, color = {255, 0, 255}));
  connect(T50.C, c50.y) annotation(
    Line(points = {{-58, -170}, {-42, -170}}, color = {255, 0, 255}));
  connect(T45.C, c45.y) annotation(
    Line(points = {{-58, -110}, {-42, -110}}, color = {255, 0, 255}));
  connect(T34.C, c34.y) annotation(
    Line(points = {{-58, -50}, {-42, -50}}, color = {255, 0, 255}));
  connect(T23.C, c23.y) annotation(
    Line(points = {{-58, 10}, {-42, 10}}, color = {255, 0, 255}));
  connect(T23.OUT, S3.IN) annotation(
    Line(points = {{-70, 8}, {-70, -10}}));
  connect(S0.X, a1.phase_active) annotation(
    Line(points = {{-58, 160}, {-42, 160}}, color = {255, 0, 255}));
  connect(S2.X, a2.phase_active) annotation(
    Line(points = {{-58, 40}, {-42, 40}}, color = {255, 0, 255}));
  connect(S0.X, sa1.phase_active) annotation(
    Line(points = {{-58, 160}, {-50, 160}, {-50, 152}, {-42, 152}}, color = {255, 0, 255}));
  connect(S3.X, ar01.phase_active) annotation(
    Line(points = {{-58, -20}, {-42, -20}}, color = {255, 0, 255}));  protected
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.01),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end test_002_SFC_actions_N_SR;