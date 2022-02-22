within SFC.Examples.Application_example_001;

model WorkCycle
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.5) annotation(
    Placement(visible = true, transformation(origin = {-88, 189}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T_open_add1 annotation(
    Placement(visible = true, transformation(origin = {-23, 164}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1Add1 annotation(
    Placement(visible = true, transformation(origin = {-23, 143}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action(action_name = "add1") annotation(
    Placement(visible = true, transformation(origin = {39, 143}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean S_Idle(variable_name = "S_Idle") annotation(
    Placement(visible = true, transformation(origin = {-72.5, -169.75}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCio.Read_boolean IsClean(variable_name = "IsClean") annotation(
    Placement(visible = true, transformation(origin = {-72.5, -188.75}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCelements.Transition transition2 annotation(
    Placement(visible = true, transformation(origin = {-19, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean1(variable_name = "Mix") annotation(
    Placement(visible = true, transformation(origin = {35.5, 120.25}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCelements.Step S2PostAdd1 annotation(
    Placement(visible = true, transformation(origin = {-23, 98}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition transition1 annotation(
    Placement(visible = true, transformation(origin = {-23, 120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action1(action_name = "add2") annotation(
    Placement(visible = true, transformation(origin = {41, -26}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean3(variable_name = "Mix") annotation(
    Placement(visible = true, transformation(origin = {42.5, -52.75}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCelements.Transition transition3 annotation(
    Placement(visible = true, transformation(origin = {-20, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S5Add2 annotation(
    Placement(visible = true, transformation(origin = {-20, -27}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S6PostAdd2 annotation(
    Placement(visible = true, transformation(origin = {-20, -67}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression6(y = S_Idle.y and IsClean.y) annotation(
    Placement(visible = true, transformation(origin = {31, 165}, extent = {{19, -11}, {-19, 11}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = S_Idle.y and IsClean.y) annotation(
    Placement(visible = true, transformation(origin = {40, -4}, extent = {{19, -11}, {-19, 11}}, rotation = 0)));
  SFC.SFCelements.N_action n_action2(action_name = "clean") annotation(
    Placement(visible = true, transformation(origin = {39, 58}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y = S_Idle.y and IsClean.y) annotation(
    Placement(visible = true, transformation(origin = {36, 78}, extent = {{19, -11}, {-19, 11}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean(variable_name = "MixClean") annotation(
    Placement(visible = true, transformation(origin = {35.5, 35.25}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCelements.Transition transition4 annotation(
    Placement(visible = true, transformation(origin = {-23, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3Clean annotation(
    Placement(visible = true, transformation(origin = {-23, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition transition5 annotation(
    Placement(visible = true, transformation(origin = {-23, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S4PostClean annotation(
    Placement(visible = true, transformation(origin = {-22, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action n_action3(action_name = "clean") annotation(
    Placement(visible = true, transformation(origin = {42, -115}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition transition6 annotation(
    Placement(visible = true, transformation(origin = {-19, -141}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression2(y = S_Idle.y and IsClean.y) annotation(
    Placement(visible = true, transformation(origin = {39, -95}, extent = {{19, -11}, {-19, 11}}, rotation = 0)));
  SFC.SFCelements.Step S7Clean2 annotation(
    Placement(visible = true, transformation(origin = {-20, -115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition transition7 annotation(
    Placement(visible = true, transformation(origin = {-20, -95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean4(variable_name = "MixClean") annotation(
    Placement(visible = true, transformation(origin = {39.5, -140.75}, extent = {{23.5, -11.75}, {-23.5, 11.75}}, rotation = 0)));
  SFC.SFCelements.Step Start(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-23, 187}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T_open_add1.OUT, S1Add1.IN) annotation(
    Line(points = {{-23, 162}, {-23, 153}}));
  connect(S1Add1.X, n_action.phase_active) annotation(
    Line(points = {{-11, 143}, {17, 143}}, color = {255, 0, 255}));
  connect(S1Add1.OUT, transition1.IN) annotation(
    Line(points = {{-23, 133}, {-23, 122}}));
  connect(transition1.OUT, S2PostAdd1.IN) annotation(
    Line(points = {{-23, 118}, {-23, 108}}));
  connect(read_boolean1.y, transition1.C) annotation(
    Line(points = {{9.65, 120.25}, {3.8, 120.25}, {3.8, 120.5}, {-11.7, 120.5}}, color = {255, 0, 255}));
  connect(S5Add2.OUT, transition3.IN) annotation(
    Line(points = {{-20, -37}, {-20, -48}}));
  connect(S5Add2.X, n_action1.phase_active) annotation(
    Line(points = {{-8, -27}, {6, -27}, {6, -26}, {19, -26}}, color = {255, 0, 255}));
  connect(read_boolean3.y, transition3.C) annotation(
    Line(points = {{17, -53}, {6.8, -53}, {6.8, -49.5}, {-8.7, -49.5}}, color = {255, 0, 255}));
  connect(transition3.OUT, S6PostAdd2.IN) annotation(
    Line(points = {{-20, -52}, {-20, -57}}));
  connect(transition2.OUT, S5Add2.IN) annotation(
    Line(points = {{-19, -6}, {-19, -12}, {-20, -12}, {-20, -17}}));
  connect(T_open_add1.C, booleanExpression6.y) annotation(
    Line(points = {{-11, 164}, {9, 164}, {9, 165}, {10, 165}}, color = {255, 0, 255}));
  connect(transition2.C, booleanExpression.y) annotation(
    Line(points = {{-7, -4}, {19, -4}}, color = {255, 0, 255}));
  connect(read_boolean.y, transition4.C) annotation(
    Line(points = {{9.65, 35.25}, {3.8, 35.25}, {3.8, 35.5}, {-11.7, 35.5}}, color = {255, 0, 255}));
  connect(transition5.OUT, S3Clean.IN) annotation(
    Line(points = {{-23, 76}, {-23, 68}}));
  connect(S3Clean.OUT, transition4.IN) annotation(
    Line(points = {{-23, 48}, {-23, 37}}));
  connect(S3Clean.X, n_action2.phase_active) annotation(
    Line(points = {{-11, 58}, {17, 58}}, color = {255, 0, 255}));
  connect(transition5.C, booleanExpression1.y) annotation(
    Line(points = {{-11, 78}, {15, 78}}, color = {255, 0, 255}));
  connect(transition4.OUT, S4PostClean.IN) annotation(
    Line(points = {{-23, 33}, {-22, 33}, {-22, 24}}));
  connect(S4PostClean.OUT, transition2.IN) annotation(
    Line(points = {{-22, 4}, {-19, 4}, {-19, -2}}));
  connect(S2PostAdd1.OUT, transition5.IN) annotation(
    Line(points = {{-23, 88}, {-23, 80}}));
  connect(S7Clean2.OUT, transition6.IN) annotation(
    Line(points = {{-20, -125}, {-20, -133.5}, {-19, -133.5}, {-19, -139}}));
  connect(read_boolean4.y, transition6.C) annotation(
    Line(points = {{13.65, -140.75}, {7.80001, -140.75}, {7.80001, -140.5}, {-7.69999, -140.5}}, color = {255, 0, 255}));
  connect(transition7.OUT, S7Clean2.IN) annotation(
    Line(points = {{-20, -97}, {-20, -105}}));
  connect(transition7.C, booleanExpression2.y) annotation(
    Line(points = {{-8, -95}, {18, -95}}, color = {255, 0, 255}));
  connect(S7Clean2.X, n_action3.phase_active) annotation(
    Line(points = {{-8, -115}, {20, -115}}, color = {255, 0, 255}));
  connect(transition7.IN, S6PostAdd2.OUT) annotation(
    Line(points = {{-20, -93}, {-20, -77}}));
  connect(T_open_add1.IN, Start.OUT) annotation(
    Line(points = {{-23, 166}, {-23, 177}}));
  connect(Start.IN, transition6.OUT) annotation(
    Line(points = {{-23, 197}, {-70, 197}, {-70, -155}, {-19, -155}, {-19, -143}}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -200}, {100, 200}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -200}, {100, 200}}, grid = {1, 1}), graphics = {Text(extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {1, 0.5}, textColor = {32, 74, 135}, extent = {{-88, 88}, {88, -87}}, textString = "Work 
Cycle")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end WorkCycle;