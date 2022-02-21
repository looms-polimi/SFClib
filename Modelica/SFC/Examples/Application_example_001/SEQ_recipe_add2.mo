within SFC.Examples.Application_example_001;

model SEQ_recipe_add2
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-80, 180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Write_boolean write_boolean3(variable_name = "cmd_V_cleaner_in")  annotation(
    Placement(visible = true, transformation(origin = {45, -118}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Write_boolean write_boolean4(variable_name = "cmd_V_cleaner_out")  annotation(
    Placement(visible = true, transformation(origin = {46, -94}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean(variable_name = "Tank_mix_LSE")  annotation(
    Placement(visible = true, transformation(origin = {40, -70}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.Step Sidle(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-10, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_start_cycle annotation(
    Placement(visible = true, transformation(origin = {-10, 140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean1(variable_name = "Tank_bulk_LSM") annotation(
    Placement(visible = true, transformation(origin = {40, 140}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_bulk annotation(
    Placement(visible = true, transformation(origin = {-10, 120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action(action_name = "cmd_V_bulk_2mix")  annotation(
    Placement(visible = true, transformation(origin = {40, 120}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_additive_1 annotation(
    Placement(visible = true, transformation(origin = {-10, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = S_bulk.t >= 100) annotation(
    Placement(visible = true, transformation(origin = {40, 95}, extent = {{20, -11}, {-20, 11}}, rotation = 0)));
  SFC.SFCelements.Step S_additive_1 annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action1(action_name = "cmd_V_additive_1_in") annotation(
    Placement(visible = true, transformation(origin = {40, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y = S_additive_1.t >= 10) annotation(
    Placement(visible = true, transformation(origin = {40, 45}, extent = {{20, -11}, {-20, 11}}, rotation = 0)));
  SFC.SFCelements.Transition T_mix annotation(
    Placement(visible = true, transformation(origin = {-10, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_mix annotation(
    Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression2(y = S_mix.t >= 600) annotation(
    Placement(visible = true, transformation(origin = {40, -10}, extent = {{20, -11}, {-20, 11}}, rotation = 0)));
  SFC.SFCelements.Transition T_empty annotation(
    Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_empty annotation(
    Placement(visible = true, transformation(origin = {-10, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action2(action_name = "cmd_V_product_out") annotation(
    Placement(visible = true, transformation(origin = {40, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_done annotation(
    Placement(visible = true, transformation(origin = {-10, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression3 annotation(
    Placement(visible = true, transformation(origin = {-34, -115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T_start_cycle.C, read_boolean1.y) annotation(
    Line(points = {{2, 140}, {18, 140}}, color = {255, 0, 255}));
  connect(S_bulk.X, n_action.phase_active) annotation(
    Line(points = {{2, 120}, {18, 120}}, color = {255, 0, 255}));
  connect(T_additive_1.C, booleanExpression.y) annotation(
    Line(points = {{2, 95}, {18, 95}}, color = {255, 0, 255}));
  connect(S_bulk.OUT, T_additive_1.IN) annotation(
    Line(points = {{-10, 110}, {-10, 97}}));
  connect(S_additive_1.X, n_action1.phase_active) annotation(
    Line(points = {{2, 70}, {18, 70}}, color = {255, 0, 255}));
  connect(T_additive_1.OUT, S_additive_1.IN) annotation(
    Line(points = {{-10, 93}, {-10, 80}}));
  connect(T_mix.C, booleanExpression1.y) annotation(
    Line(points = {{2, 45}, {18, 45}}, color = {255, 0, 255}));
  connect(S_mix.IN, T_mix.OUT) annotation(
    Line(points = {{-10, 30}, {-10, 43}}));
  connect(T_empty.C, booleanExpression2.y) annotation(
    Line(points = {{2, -10}, {18, -10}}, color = {255, 0, 255}));
  connect(T_empty.IN, S_mix.OUT) annotation(
    Line(points = {{-10, -8}, {-10, 10}}));
  connect(S_empty.X, n_action2.phase_active) annotation(
    Line(points = {{2, -40}, {18, -40}}, color = {255, 0, 255}));
  connect(T_empty.OUT, S_empty.IN) annotation(
    Line(points = {{-10, -12}, {-10, -30}}));
  connect(T_done.C, read_boolean.y) annotation(
    Line(points = {{2, -70}, {18, -70}}, color = {255, 0, 255}));
  connect(booleanExpression3.y, write_boolean3.u) annotation(
    Line(points = {{-23, -115}, {-18, -115}, {-18, -118}, {23, -118}}, color = {255, 0, 255}));
  connect(booleanExpression3.y, write_boolean4.u) annotation(
    Line(points = {{-23, -115}, {-4, -115}, {-4, -94}, {24, -94}}, color = {255, 0, 255}));
  connect(S_empty.OUT, T_done.IN) annotation(
    Line(points = {{-10, -50}, {-10, -68}}));
  connect(Sidle.OUT, T_start_cycle.IN) annotation(
    Line(points = {{-10, 160}, {-10, 142}}));
  connect(T_start_cycle.OUT, S_bulk.IN) annotation(
    Line(points = {{-10, 138}, {-10, 130}}));
  connect(T_done.OUT, Sidle.IN) annotation(
    Line(points = {{-10, -72}, {-10, -82}, {-41, -82}, {-41, 190}, {-10, 190}, {-10, 180}}));
  connect(T_mix.IN, S_additive_1.OUT) annotation(
    Line(points = {{-10, 47}, {-10, 60}}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -200}, {100, 200}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(fillColor = {78, 154, 6}, extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {1, 0.5}, lineColor = {32, 74, 135}, fillColor = {78, 154, 6}, extent = {{-88, 88}, {88, -87}}, textString = "SEQ
recipe")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end SEQ_recipe_add2;