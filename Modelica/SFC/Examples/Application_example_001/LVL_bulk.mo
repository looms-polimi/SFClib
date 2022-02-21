within SFC.Examples.Application_example_001;

model LVL_bulk
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-80, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_off(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_open annotation(
    Placement(visible = true, transformation(origin = {-10, 9}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_on annotation(
    Placement(visible = true, transformation(origin = {-10, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_close annotation(
    Placement(visible = true, transformation(origin = {-10, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action(action_name = "cmd_V_bulk_in")  annotation(
    Placement(visible = true, transformation(origin = {69, -20}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean(variable_name = "Tank_bulk_LSH")  annotation(
    Placement(visible = true, transformation(origin = {69, -50}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean3(variable_name = "Tank_bulk_LSL") annotation(
    Placement(visible = true, transformation(origin = {69, 10}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Not not1 annotation(
    Placement(visible = true, transformation(origin = {26, 10}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
equation
  connect(S_off.OUT, T_open.IN) annotation(
    Line(points = {{-10, 30}, {-10, 11}}));
  connect(T_open.OUT, S_on.IN) annotation(
    Line(points = {{-10, 7}, {-10, -10}}));
  connect(S_on.OUT, T_close.IN) annotation(
    Line(points = {{-10, -30}, {-10, -48}}));
  connect(T_close.OUT, S_off.IN) annotation(
    Line(points = {{-10, -52}, {-10, -70}, {-40, -70}, {-40, 69}, {-10, 69}, {-10, 50}}));
  connect(T_close.C, read_boolean.y) annotation(
    Line(points = {{2, -50}, {47, -50}}, color = {255, 0, 255}));
  connect(S_on.X, n_action.phase_active) annotation(
    Line(points = {{2, -20}, {47, -20}}, color = {255, 0, 255}));
  connect(not1.u, read_boolean3.y) annotation(
    Line(points = {{33, 10}, {47, 10}}, color = {255, 0, 255}));
  connect(T_open.C, not1.y) annotation(
    Line(points = {{2, 9}, {19, 9}, {19, 10}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(fillColor = {78, 154, 6}, extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {1, 0.5}, lineColor = {32, 74, 135}, fillColor = {78, 154, 6}, extent = {{-88, 88}, {88, -87}}, textString = "LVL
bulk")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end LVL_bulk;