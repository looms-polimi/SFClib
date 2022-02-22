within SFC.Examples.Application_example_001;

model SEQ_clean
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-80, 180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean(variable_name = "Tank_mix_LSE")  annotation(
    Placement(visible = true, transformation(origin = {41, -12}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.Step IsClean(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-10, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_start_clean annotation(
    Placement(visible = true, transformation(origin = {-10, 140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean1(variable_name = "clean") annotation(
    Placement(visible = true, transformation(origin = {40, 140}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.Step Open_cleaning_valve annotation(
    Placement(visible = true, transformation(origin = {-10, 120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action(action_name = "cmd_V_cleaner_in")  annotation(
    Placement(visible = true, transformation(origin = {40, 120}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_end_fill annotation(
    Placement(visible = true, transformation(origin = {-10, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step MixToClean annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action1(action_name = "MixClean") annotation(
    Placement(visible = true, transformation(origin = {40, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y = MixToClean.t >= 200) annotation(
    Placement(visible = true, transformation(origin = {40, 45}, extent = {{20, -11}, {-20, 11}}, rotation = 0)));
  SFC.SFCelements.Transition T_mix annotation(
    Placement(visible = true, transformation(origin = {-10, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_empty annotation(
    Placement(visible = true, transformation(origin = {-9, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action2(action_name = "cmd_V_cleaner_out") annotation(
    Placement(visible = true, transformation(origin = {41, 18}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_done annotation(
    Placement(visible = true, transformation(origin = {-9, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action3(action_name = "IsClean") annotation(
    Placement(visible = true, transformation(origin = {42, 171}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean2(variable_name = "Tank_mix_LSH") annotation(
    Placement(visible = true, transformation(origin = {44, 94}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
equation
  connect(T_start_clean.C, read_boolean1.y) annotation(
    Line(points = {{2, 140}, {18, 140}}, color = {255, 0, 255}));
  connect(Open_cleaning_valve.X, n_action.phase_active) annotation(
    Line(points = {{2, 120}, {18, 120}}, color = {255, 0, 255}));
  connect(Open_cleaning_valve.OUT, T_end_fill.IN) annotation(
    Line(points = {{-10, 110}, {-10, 97}}));
  connect(MixToClean.X, n_action1.phase_active) annotation(
    Line(points = {{2, 70}, {18, 70}}, color = {255, 0, 255}));
  connect(T_end_fill.OUT, MixToClean.IN) annotation(
    Line(points = {{-10, 93}, {-10, 80}}));
  connect(T_mix.C, booleanExpression1.y) annotation(
    Line(points = {{2, 45}, {18, 45}}, color = {255, 0, 255}));
  connect(S_empty.X, n_action2.phase_active) annotation(
    Line(points = {{3, 18}, {19, 18}}, color = {255, 0, 255}));
  connect(T_done.C, read_boolean.y) annotation(
    Line(points = {{3, -12}, {19, -12}}, color = {255, 0, 255}));
  connect(S_empty.OUT, T_done.IN) annotation(
    Line(points = {{-9, 8}, {-9, -10}}));
  connect(IsClean.OUT, T_start_clean.IN) annotation(
    Line(points = {{-10, 160}, {-10, 142}}));
  connect(T_start_clean.OUT, Open_cleaning_valve.IN) annotation(
    Line(points = {{-10, 138}, {-10, 130}}));
  connect(T_done.OUT, IsClean.IN) annotation(
    Line(points = {{-9, -14}, {-9, -29}, {-41, -29}, {-41, 190}, {-10, 190}, {-10, 180}}));
  connect(T_mix.IN, MixToClean.OUT) annotation(
    Line(points = {{-10, 47}, {-10, 60}}));
  connect(T_mix.OUT, S_empty.IN) annotation(
    Line(points = {{-10, 43}, {-9, 43}, {-9, 28}}));
  connect(IsClean.X, n_action3.phase_active) annotation(
    Line(points = {{2, 170}, {10.5, 170}, {10.5, 171}, {20, 171}}, color = {255, 0, 255}));
  connect(read_boolean2.y, T_end_fill.C) annotation(
    Line(points = {{22, 94}, {13.5, 94}, {13.5, 95}, {2, 95}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -200}, {100, 200}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {1, 0.5}, textColor = {32, 74, 135}, extent = {{-88, 88}, {88, -87}}, textString = "SEQ
clean")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end SEQ_clean;