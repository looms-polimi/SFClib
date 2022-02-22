within SFC.Examples.Application_example_001;

model SEQ_recipes
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-90, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean(variable_name = "Tank_mix_LSE")  annotation(
    Placement(visible = true, transformation(origin = {74, -129}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.Step Sidle(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {24, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_start_cycle annotation(
    Placement(visible = true, transformation(origin = {-17, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean Tank_bulk_LSS(variable_name = "Tank_bulk_LSS") annotation(
    Placement(visible = true, transformation(origin = {-83.5, -148.75}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCelements.Step S_bulk_with_Add1 annotation(
    Placement(visible = true, transformation(origin = {-17, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action(action_name = "cmd_V_bulk_2mix")  annotation(
    Placement(visible = true, transformation(origin = {31.5, 41.75}, extent = {{-20.5, -10.25}, {20.5, 10.25}}, rotation = 0)));
  SFC.SFCelements.Transition T_additive_1 annotation(
    Placement(visible = true, transformation(origin = {-17, 3}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = Tank_mix_LSH.y) annotation(
    Placement(visible = true, transformation(origin = {31, 4}, extent = {{19, -11}, {-19, 11}}, rotation = 0)));
  SFC.SFCelements.Step S_mix annotation(
    Placement(visible = true, transformation(origin = {24, -39}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression2(y = S_mix.t >= 600) annotation(
    Placement(visible = true, transformation(origin = {74, -69}, extent = {{20, -11}, {-20, 11}}, rotation = 0)));
  SFC.SFCelements.Transition T_empty annotation(
    Placement(visible = true, transformation(origin = {24, -69}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S_empty annotation(
    Placement(visible = true, transformation(origin = {24, -99}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action2(action_name = "cmd_V_product_out") annotation(
    Placement(visible = true, transformation(origin = {74, -99}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_done annotation(
    Placement(visible = true, transformation(origin = {24, -129}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action5(action_name = "S_Idle") annotation(
    Placement(visible = true, transformation(origin = {76.5, 101.75}, extent = {{-20.5, -10.25}, {20.5, 10.25}}, rotation = 0)));
  SFC.SFCio.Read_boolean add1(variable_name = "add1")  annotation(
    Placement(visible = true, transformation(origin = {-83.5, -168.75}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCio.Read_boolean add2(variable_name = "add2") annotation(
    Placement(visible = true, transformation(origin = {-84.5, -186.25}, extent = {{24.5, -12.25}, {-24.5, 12.25}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression7(y = Tank_bulk_LSS.y and add1.y) annotation(
    Placement(visible = true, transformation(origin = {29, 61}, extent = {{19, -11}, {-19, 11}}, rotation = 0)));
  SFC.SFCelements.N_action n_action4(action_name = "cmd_V_additive_1_in") annotation(
    Placement(visible = true, transformation(origin = {30.5, 26.75}, extent = {{-20.5, -10.25}, {20.5, 10.25}}, rotation = 0)));
  SFC.SFCio.Read_boolean Tank_mix_LSH(variable_name = "Tank_mix_LSH") annotation(
    Placement(visible = true, transformation(origin = {-83.5, -125.75}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCelements.N_action n_action1(action_name = "Mix") annotation(
    Placement(visible = true, transformation(origin = {77.5, -40.25}, extent = {{-20.5, -10.25}, {20.5, 10.25}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression6(y = Tank_bulk_LSS.y and not add1.y and add2.y) annotation(
    Placement(visible = true, transformation(origin = {121, 63}, extent = {{19, -11}, {-19, 11}}, rotation = 0)));
  SFC.SFCelements.Step S_bulk_with_Add2 annotation(
    Placement(visible = true, transformation(origin = {74, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action3(action_name = "cmd_V_bulk_2mix") annotation(
    Placement(visible = true, transformation(origin = {128.5, 35.75}, extent = {{-20.5, -10.25}, {20.5, 10.25}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression4(y = Tank_mix_LSH.y) annotation(
    Placement(visible = true, transformation(origin = {128, -1}, extent = {{19, -11}, {-19, 11}}, rotation = 0)));
  SFC.SFCelements.Transition transition annotation(
    Placement(visible = true, transformation(origin = {74, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action6(action_name = "cmd_V_additive_2_in") annotation(
    Placement(visible = true, transformation(origin = {129.5, 20.75}, extent = {{-20.5, -10.25}, {20.5, 10.25}}, rotation = 0)));
  SFC.SFCelements.Transition transition1 annotation(
    Placement(visible = true, transformation(origin = {74, 1}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.AlternativeSplit2 alternativeSplit2 annotation(
    Placement(visible = true, transformation(origin = {23, 79}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.AlternativeJoin2 alternativeJoin2 annotation(
    Placement(visible = true, transformation(origin = {28, -19}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S_bulk_with_Add1.X, n_action.phase_active) annotation(
    Line(points = {{-5, 30}, {1.5, 30}, {1.5, 42}, {9, 42}}, color = {255, 0, 255}));
  connect(T_additive_1.C, booleanExpression.y) annotation(
    Line(points = {{-5, 3}, {2.5, 3}, {2.5, 4}, {10, 4}}, color = {255, 0, 255}));
  connect(T_empty.C, booleanExpression2.y) annotation(
    Line(points = {{36, -69}, {52, -69}}, color = {255, 0, 255}));
  connect(T_empty.IN, S_mix.OUT) annotation(
    Line(points = {{24, -67}, {24, -49}}));
  connect(S_empty.X, n_action2.phase_active) annotation(
    Line(points = {{36, -99}, {52, -99}}, color = {255, 0, 255}));
  connect(T_empty.OUT, S_empty.IN) annotation(
    Line(points = {{24, -71}, {24, -89}}));
  connect(T_done.C, read_boolean.y) annotation(
    Line(points = {{36, -129}, {52, -129}}, color = {255, 0, 255}));
  connect(S_empty.OUT, T_done.IN) annotation(
    Line(points = {{24, -109}, {24, -127}}));
  connect(T_done.OUT, Sidle.IN) annotation(
    Line(points = {{24, -131}, {-47, -131}, {-47, 110}, {24, 110}}));
  connect(T_start_cycle.OUT, S_bulk_with_Add1.IN) annotation(
    Line(points = {{-17, 58}, {-17, 40}}));
  connect(S_bulk_with_Add1.OUT, T_additive_1.IN) annotation(
    Line(points = {{-17, 20}, {-17, 5}}));
  connect(Sidle.X, n_action5.phase_active) annotation(
    Line(points = {{36, 100}, {45.5, 100}, {45.5, 102}, {54, 102}}, color = {255, 0, 255}));
  connect(T_start_cycle.C, booleanExpression7.y) annotation(
    Line(points = {{-5, 60}, {8, 60}, {8, 61}}, color = {255, 0, 255}));
  connect(S_bulk_with_Add1.X, n_action4.phase_active) annotation(
    Line(points = {{-5, 30}, {6.5, 30}, {6.5, 27}, {8, 27}}, color = {255, 0, 255}));
  connect(S_mix.X, n_action1.phase_active) annotation(
    Line(points = {{36, -39}, {55, -39}, {55, -40}}, color = {255, 0, 255}));
  connect(transition1.C, booleanExpression4.y) annotation(
    Line(points = {{86, 1}, {102.5, 1}, {102.5, -1}, {107, -1}}, color = {255, 0, 255}));
  connect(transition.OUT, S_bulk_with_Add2.IN) annotation(
    Line(points = {{74, 60}, {74, 38}}));
  connect(S_bulk_with_Add2.OUT, transition1.IN) annotation(
    Line(points = {{74, 18}, {74, 3}}));
  connect(booleanExpression6.y, transition.C) annotation(
    Line(points = {{100.1, 63}, {86.1, 63}, {86.1, 62}}, color = {255, 0, 255}));
  connect(S_bulk_with_Add2.X, n_action6.phase_active) annotation(
    Line(points = {{86, 28}, {98, 28}, {98, 21}, {107, 21}}, color = {255, 0, 255}));
  connect(S_bulk_with_Add2.X, n_action3.phase_active) annotation(
    Line(points = {{86, 28}, {97.5, 28}, {97.5, 36}, {106, 36}}, color = {255, 0, 255}));
  connect(alternativeSplit2.OUT1, T_start_cycle.IN) annotation(
    Line(points = {{-17, 79}, {-17, 62}}));
  connect(alternativeSplit2.OUT2, transition.IN) annotation(
    Line(points = {{63, 79}, {74, 79}, {74, 64}}));
  connect(alternativeJoin2.OUT, S_mix.IN) annotation(
    Line(points = {{28, -19}, {28, -24}, {24, -24}, {24, -29}}));
  connect(T_additive_1.OUT, alternativeJoin2.IN1) annotation(
    Line(points = {{-17, 1}, {-17, -8.5}, {-12, -8.5}, {-12, -17}}));
  connect(transition1.OUT, alternativeJoin2.IN2) annotation(
    Line(points = {{74, -1}, {74, -16}, {75.75, -16}, {75.75, -17}, {68, -17}}));
  connect(Sidle.OUT, alternativeSplit2.IN) annotation(
    Line(points = {{24, 90}, {24, 85.5}, {23, 85.5}, {23, 81}}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -200}, {100, 200}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {1, 0.5}, textColor = {32, 74, 135}, extent = {{-88, 88}, {88, -87}}, textString = "SEQ
recipes")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end SEQ_recipes;