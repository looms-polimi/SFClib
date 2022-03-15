within SFC.Examples.Application_example_001;

model SEQ_recipe
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-180, 180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean(variable_name = "Tank_mix_LSE")  annotation(
    Placement(visible = true, transformation(origin = {-80, -20}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.Step Sidle(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-120, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_start_cycle annotation(
    Placement(visible = true, transformation(origin = {-120, 139}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean1(variable_name = "Tank_bulk_LSS") annotation(
    Placement(visible = true, transformation(origin = {-80, 139}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_bulk annotation(
    Placement(visible = true, transformation(origin = {-120, 120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action(action_name = "cmd_V_bulk_2mix")  annotation(
    Placement(visible = true, transformation(origin = {-80, 120}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_additive_1 annotation(
    Placement(visible = true, transformation(origin = {-120, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = S_bulk.t >= 100) annotation(
    Placement(visible = true, transformation(origin = {-79.5, 100}, extent = {{20.5, -11}, {-20.5, 11}}, rotation = 0)));
  SFC.SFCelements.Step S_additive_1 annotation(
    Placement(visible = true, transformation(origin = {-120, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action1(action_name = "cmd_V_additive_1_in") annotation(
    Placement(visible = true, transformation(origin = {-80, 80}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y = S_additive_1.t >= 10) annotation(
    Placement(visible = true, transformation(origin = {-80, 60}, extent = {{20, -11}, {-20, 11}}, rotation = 0)));
  SFC.SFCelements.Transition T_mix annotation(
    Placement(visible = true, transformation(origin = {-120, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_mix annotation(
    Placement(visible = true, transformation(origin = {-120, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression2(y = S_mix.t >= 600) annotation(
    Placement(visible = true, transformation(origin = {-80, 20}, extent = {{20, -11}, {-20, 11}}, rotation = 0)));
  SFC.SFCelements.Transition T_empty annotation(
    Placement(visible = true, transformation(origin = {-120, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_empty annotation(
    Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action2(action_name = "cmd_V_product_out") annotation(
    Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_emptied annotation(
    Placement(visible = true, transformation(origin = {-120, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action3(action_name = "cmd_mixer") annotation(
    Placement(visible = true, transformation(origin = {-80, 40}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_wait_empty annotation(
    Placement(visible = true, transformation(origin = {-120, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.AlternativeSplit2 split_clean annotation(
    Placement(visible = true, transformation(origin = {30, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_clean_in annotation(
    Placement(visible = true, transformation(origin = {70, 120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_clean_in annotation(
    Placement(visible = true, transformation(origin = {70, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action4(action_name = "cmd_V_cleaner_in") annotation(
    Placement(visible = true, transformation(origin = {110, 96}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.P_actions_typical.P_action_integer_set reset_cycle_count(label = "cycles=0", value = 0, variable_name = "cycles")  annotation(
    Placement(visible = true, transformation(origin = {110, 105}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_clean_full annotation(
    Placement(visible = true, transformation(origin = {70, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression4(y = S_clean_in.t >= 5) annotation(
    Placement(visible = true, transformation(origin = {110.5, 80}, extent = {{20.5, -11}, {-20.5, 11}}, rotation = 0)));
  SFC.SFCelements.Step S_clean_mix annotation(
    Placement(visible = true, transformation(origin = {70, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action5(action_name = "cmd_mixer") annotation(
    Placement(visible = true, transformation(origin = {110, 60}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_clean_empty annotation(
    Placement(visible = true, transformation(origin = {70, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression5(y = S_clean_mix.t >= 20) annotation(
    Placement(visible = true, transformation(origin = {110.5, 40}, extent = {{20.5, -11}, {-20.5, 11}}, rotation = 0)));
  SFC.SFCelements.Step S_clean_empty annotation(
    Placement(visible = true, transformation(origin = {70, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action6(action_name = "cmd_V_cleaner_out") annotation(
    Placement(visible = true, transformation(origin = {110, 20}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean2(variable_name = "Tank_mix_LSE") annotation(
    Placement(visible = true, transformation(origin = {110, 0}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_clean_emptied annotation(
    Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_cycles_inc annotation(
    Placement(visible = true, transformation(origin = {-10, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_clean_skipped annotation(
    Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression6(y = true) annotation(
    Placement(visible = true, transformation(origin = {31, 20}, extent = {{11, -8}, {-11, 8}}, rotation = 0)));
  SFC.SFCelements.Step S_cycles_inc annotation(
    Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.P_actions_typical.P_action_integer_inc_dec cycles_inc(label = "cycles=cycles+1", variable_name = "cycles")  annotation(
    Placement(visible = true, transformation(origin = {30, 60}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.AlternativeJoin2 joun_clean annotation(
    Placement(visible = true, transformation(origin = {30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_integer r_cycles(variable_name = "cycles")  annotation(
    Placement(visible = true, transformation(origin = {-170, 156}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression3(y = r_cycles.y < 5) annotation(
    Placement(visible = true, transformation(origin = {30.5, 100}, extent = {{20.5, -11}, {-20.5, 11}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression7(y = r_cycles.y >= 5) annotation(
    Placement(visible = true, transformation(origin = {110.5, 120}, extent = {{20.5, -11}, {-20.5, 11}}, rotation = 0)));
equation
  connect(T_start_cycle.C, read_boolean1.y) annotation(
    Line(points = {{-108, 139}, {-102, 139}}, color = {255, 0, 255}));
  connect(S_bulk.X, n_action.phase_active) annotation(
    Line(points = {{-108, 120}, {-102, 120}}, color = {255, 0, 255}));
  connect(T_additive_1.C, booleanExpression.y) annotation(
    Line(points = {{-108, 100}, {-102, 100}}, color = {255, 0, 255}));
  connect(S_bulk.OUT, T_additive_1.IN) annotation(
    Line(points = {{-120, 110}, {-120, 102}}));
  connect(S_additive_1.X, n_action1.phase_active) annotation(
    Line(points = {{-108, 80}, {-102, 80}}, color = {255, 0, 255}));
  connect(T_additive_1.OUT, S_additive_1.IN) annotation(
    Line(points = {{-120, 98}, {-120, 90}}));
  connect(T_mix.C, booleanExpression1.y) annotation(
    Line(points = {{-108, 60}, {-102, 60}}, color = {255, 0, 255}));
  connect(S_mix.IN, T_mix.OUT) annotation(
    Line(points = {{-120, 50}, {-120, 58}}));
  connect(T_empty.C, booleanExpression2.y) annotation(
    Line(points = {{-108, 20}, {-102, 20}}, color = {255, 0, 255}));
  connect(T_empty.IN, S_mix.OUT) annotation(
    Line(points = {{-120, 22}, {-120, 30}}));
  connect(S_empty.X, n_action2.phase_active) annotation(
    Line(points = {{-108, 0}, {-102, 0}}, color = {255, 0, 255}));
  connect(T_empty.OUT, S_empty.IN) annotation(
    Line(points = {{-120, 18}, {-120, 10}}));
  connect(T_emptied.C, read_boolean.y) annotation(
    Line(points = {{-108, -20}, {-102, -20}}, color = {255, 0, 255}));
  connect(S_empty.OUT, T_emptied.IN) annotation(
    Line(points = {{-120, -10}, {-120, -18}}));
  connect(Sidle.OUT, T_start_cycle.IN) annotation(
    Line(points = {{-120, 150}, {-120, 141}}));
  connect(T_start_cycle.OUT, S_bulk.IN) annotation(
    Line(points = {{-120, 137}, {-120, 130}}));
  connect(T_mix.IN, S_additive_1.OUT) annotation(
    Line(points = {{-120, 62}, {-120, 70}}));
  connect(S_mix.X, n_action3.phase_active) annotation(
    Line(points = {{-108, 40}, {-102, 40}}, color = {255, 0, 255}));
  connect(T_emptied.OUT, S_wait_empty.IN) annotation(
    Line(points = {{-120, -22}, {-120, -30}}));
  connect(S_clean_in.X, reset_cycle_count.phase_active) annotation(
    Line(points = {{82, 100}, {85, 100}, {85, 105}, {88, 105}}, color = {255, 0, 255}));
  connect(S_clean_in.X, n_action4.phase_active) annotation(
    Line(points = {{82, 100}, {85, 100}, {85, 96}, {88, 96}}, color = {255, 0, 255}));
  connect(T_clean_in.OUT, S_clean_in.IN) annotation(
    Line(points = {{70, 118}, {70, 110}}));
  connect(S_clean_in.OUT, T_clean_full.IN) annotation(
    Line(points = {{70, 90}, {70, 82}}));
  connect(T_clean_full.C, booleanExpression4.y) annotation(
    Line(points = {{82, 80}, {88, 80}}, color = {255, 0, 255}));
  connect(S_clean_mix.X, n_action5.phase_active) annotation(
    Line(points = {{82, 60}, {88, 60}}, color = {255, 0, 255}));
  connect(T_clean_full.OUT, S_clean_mix.IN) annotation(
    Line(points = {{70, 78}, {70, 70}}));
  connect(S_clean_mix.OUT, T_clean_empty.IN) annotation(
    Line(points = {{70, 50}, {70, 42}}));
  connect(T_clean_empty.C, booleanExpression5.y) annotation(
    Line(points = {{82, 40}, {88, 40}}, color = {255, 0, 255}));
  connect(S_clean_empty.X, n_action6.phase_active) annotation(
    Line(points = {{82, 20}, {88, 20}}, color = {255, 0, 255}));
  connect(T_clean_empty.OUT, S_clean_empty.IN) annotation(
    Line(points = {{70, 38}, {70, 30}}));
  connect(T_clean_emptied.IN, S_clean_empty.OUT) annotation(
    Line(points = {{70, 2}, {70, 10}}));
  connect(T_clean_emptied.C, read_boolean2.y) annotation(
    Line(points = {{82, 0}, {88, 0}}, color = {255, 0, 255}));
  connect(split_clean.OUT2, T_clean_in.IN) annotation(
    Line(points = {{70, 130}, {70, 122}}));
  connect(T_clean_skipped.C, booleanExpression6.y) annotation(
    Line(points = {{2, 20}, {19, 20}}, color = {255, 0, 255}));
  connect(S_cycles_inc.IN, T_cycles_inc.OUT) annotation(
    Line(points = {{-10, 70}, {-10, 98}}));
  connect(T_cycles_inc.IN, split_clean.OUT1) annotation(
    Line(points = {{-10, 102}, {-10, 130}}));
  connect(T_clean_skipped.IN, S_cycles_inc.OUT) annotation(
    Line(points = {{-10, 22}, {-10, 50}}));
  connect(S_cycles_inc.X, cycles_inc.phase_active) annotation(
    Line(points = {{2, 60}, {8, 60}}, color = {255, 0, 255}));
  connect(T_clean_skipped.OUT, joun_clean.IN1) annotation(
    Line(points = {{-10, 18}, {-10, -8}}));
  connect(T_clean_emptied.OUT, joun_clean.IN2) annotation(
    Line(points = {{70, -2}, {70, -8}}));
  connect(S_wait_empty.OUT, split_clean.IN) annotation(
    Line(points = {{-120, -50}, {-120, -60}, {-40, -60}, {-40, 140}, {30, 140}, {30, 132}}));
  connect(T_cycles_inc.C, booleanExpression3.y) annotation(
    Line(points = {{2, 100}, {8, 100}}, color = {255, 0, 255}));
  connect(T_clean_in.C, booleanExpression7.y) annotation(
    Line(points = {{82, 120}, {88, 120}}, color = {255, 0, 255}));
  connect(joun_clean.OUT, Sidle.IN) annotation(
    Line(points = {{30, -10}, {30, -20}, {150, -20}, {150, 180}, {-120, 180}, {-120, 170}}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-200, -200}, {200, 200}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {1, 0.5}, lineColor = {32, 74, 135}, extent = {{-88, 88}, {88, -87}}, textString = "SEQ
recipe")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end SEQ_recipe;