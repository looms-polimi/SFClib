within SFC.Examples.Application_example_001;

model LVL_bulk
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-80, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_off(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-20, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_open annotation(
    Placement(visible = true, transformation(origin = {-20, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_on annotation(
    Placement(visible = true, transformation(origin = {-20, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_close annotation(
    Placement(visible = true, transformation(origin = {-20, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action(action_name = "cmd_V_bulk_in")  annotation(
    Placement(visible = true, transformation(origin = {20, 30}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean(variable_name = "Tank_bulk_LSH")  annotation(
    Placement(visible = true, transformation(origin = {20, 10}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean3(variable_name = "Tank_bulk_LSL") annotation(
    Placement(visible = true, transformation(origin = {20, 50}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
equation
  connect(S_off.OUT, T_open.IN) annotation(
    Line(points = {{-20, 60}, {-20, 52}}));
  connect(T_open.OUT, S_on.IN) annotation(
    Line(points = {{-20, 48}, {-20, 40}}));
  connect(S_on.OUT, T_close.IN) annotation(
    Line(points = {{-20, 20}, {-20, 12}}));
  connect(T_close.OUT, S_off.IN) annotation(
    Line(points = {{-20, 8}, {-20, 0}, {-50, 0}, {-50, 90}, {-20, 90}, {-20, 80}}));
  connect(T_close.C, read_boolean.y) annotation(
    Line(points = {{-8, 10}, {-2, 10}}, color = {255, 0, 255}));
  connect(S_on.X, n_action.phase_active) annotation(
    Line(points = {{-8, 30}, {-2, 30}}, color = {255, 0, 255}));
  connect(T_open.C, read_boolean3.y) annotation(
    Line(points = {{-8, 50}, {-2, 50}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(fillColor = {78, 154, 6}, extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {1, 0.5}, lineColor = {32, 74, 135}, fillColor = {78, 154, 6}, extent = {{-88, 88}, {88, -87}}, textString = "LVL
bulk")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end LVL_bulk;