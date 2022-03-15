within SFC.Tests;

model Test_P_actions_typical
  SFC.SFCelements.InitialStepNUT S0 annotation(
    Placement(visible = true, transformation(origin = {-30, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.P_actions_typical.P_action_integer_set p_action_integer_set(label = "int1=3", value = 0, variable_name = "int1")  annotation(
    Placement(visible = true, transformation(origin = {22, 110}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.1)  annotation(
    Placement(visible = true, transformation(origin = {-112, 150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-30, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = true)  annotation(
    Placement(visible = true, transformation(origin = {10, 80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCio.Read_integer int1(variable_name = "int1")  annotation(
    Placement(visible = true, transformation(origin = {100, 80}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.P_actions_typical.P_action_integer_inc_dec p_action_integer_inc_dec(label = "int1++", variable_name = "int1")  annotation(
    Placement(visible = true, transformation(origin = {-18, 10}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFCelements.AlternativeJoin2 alternativeJoin2 annotation(
    Placement(visible = true, transformation(origin = {-70, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y = int1.y >= 5) annotation(
    Placement(visible = true, transformation(origin = {10, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-30, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression2(y = true) annotation(
    Placement(visible = true, transformation(origin = {10, 80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression3(y = true) annotation(
    Placement(visible = true, transformation(origin = {26, -100}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.AlternativeSplit2 alternativeSplit2 annotation(
    Placement(visible = true, transformation(origin = {-70, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.P_actions_typical.P_action_integer_set p_action_integer_set1(label = "int1=0", value = 0, variable_name = "int1")  annotation(
    Placement(visible = true, transformation(origin = {20, -70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.AlternativeJoin2 alternativeJoin21 annotation(
    Placement(visible = true, transformation(origin = {-70, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-70, -150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Transition Tn annotation(
    Placement(visible = true, transformation(origin = {-110, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression4(y = int1.y < 5) annotation(
    Placement(visible = true, transformation(origin = {-72, -42}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition transition annotation(
    Placement(visible = true, transformation(origin = {-70, -180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression5(y = true) annotation(
    Placement(visible = true, transformation(origin = {-14, -180}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFCelements.Transition T3 annotation(
    Placement(visible = true, transformation(origin = {-30, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.X, p_action_integer_set.phase_active) annotation(
    Line(points = {{-18, 110}, {0, 110}}, color = {255, 0, 255}));
  connect(T01.C, booleanExpression.y) annotation(
    Line(points = {{-18, 80}, {-1, 80}}, color = {255, 0, 255}));
  connect(T01.IN, S0.OUT) annotation(
    Line(points = {{-30, 82}, {-30, 100}}));
  connect(S1.X, p_action_integer_inc_dec.phase_active) annotation(
    Line(points = {{-58, 10}, {-40, 10}}, color = {255, 0, 255}));
  connect(alternativeJoin2.OUT, S1.IN) annotation(
    Line(points = {{-70, 40}, {-70, 20}}));
  connect(T01.OUT, alternativeJoin2.IN2) annotation(
    Line(points = {{-30, 78}, {-30, 42}}));
  connect(T2.C, booleanExpression1.y) annotation(
    Line(points = {{-18, -40}, {0, -40}}, color = {255, 0, 255}));
  connect(alternativeSplit2.OUT2, T2.IN) annotation(
    Line(points = {{-30, -20}, {-30, -38}}));
  connect(S1.OUT, alternativeSplit2.IN) annotation(
    Line(points = {{-70, 0}, {-70, -18}}));
  connect(S2.X, p_action_integer_set1.phase_active) annotation(
    Line(points = {{-18, -70}, {-2, -70}}, color = {255, 0, 255}));
  connect(Tn.C, booleanExpression4.y) annotation(
    Line(points = {{-98, -42}, {-82, -42}}, color = {255, 0, 255}));
  connect(alternativeSplit2.OUT1, Tn.IN) annotation(
    Line(points = {{-110, -20}, {-110, -40}}));
  connect(Tn.OUT, alternativeJoin21.IN1) annotation(
    Line(points = {{-110, -44}, {-110, -120}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-30, -42}, {-30, -60}}));
  connect(transition.C, booleanExpression5.y) annotation(
    Line(points = {{-58, -180}, {-24, -180}}, color = {255, 0, 255}));
  connect(alternativeJoin21.OUT, S3.IN) annotation(
    Line(points = {{-70, -122}, {-70, -140}}));
  connect(transition.OUT, alternativeJoin2.IN1) annotation(
    Line(points = {{-70, -182}, {-70, -194}, {-132, -194}, {-132, 52}, {-110, 52}, {-110, 42}}));
  connect(S3.OUT, transition.IN) annotation(
    Line(points = {{-70, -160}, {-70, -178}}));
  connect(T3.C, booleanExpression3.y) annotation(
    Line(points = {{-18, -100}, {16, -100}}, color = {255, 0, 255}));
  connect(T3.OUT, alternativeJoin21.IN2) annotation(
    Line(points = {{-30, -102}, {-30, -120}}));
  connect(T3.IN, S2.OUT) annotation(
    Line(points = {{-30, -98}, {-30, -80}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    experiment(StartTime = 0, StopTime = 5, Tolerance = 1e-6, Interval = 0.01),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Test_P_actions_typical;