within SFC.Examples.SFC_and_CT_systems;

model E001_Monolithic
  extends Modelica.Icons.Example;
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.025)  annotation(
    Placement(visible = true, transformation(origin = {-170, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-120, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-120, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1(initialStep = false)  annotation(
    Placement(visible = true, transformation(origin = {-120, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-120, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c10(y = rpv.y <= 0.3)  annotation(
    Placement(visible = true, transformation(origin = {-80, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c01(y = rpv.y >= 0.7)  annotation(
    Placement(visible = true, transformation(origin = {-80, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P(a = {10, 1})  annotation(
    Placement(visible = true, transformation(origin = {90, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCio.Write_real wr1(variable_name = "pv")  annotation(
    Placement(visible = true, transformation(origin = {140, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean rb1(variable_name = "cs")  annotation(
    Placement(visible = true, transformation(origin = {0, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Math.BooleanToReal b2r1 annotation(
    Placement(visible = true, transformation(origin = {50, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_real rpv(variable_name = "pv")  annotation(
    Placement(visible = true, transformation(origin = {-180, 20}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.N_action acs1(action_name = "cs")  annotation(
    Placement(visible = true, transformation(origin = {-70, 20}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T23 annotation(
    Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action acs2(action_name = "cs") annotation(
    Placement(visible = true, transformation(origin = {40, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c23(y = S2.t >= 12) annotation(
    Placement(visible = true, transformation(origin = {30, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3(initialStep = false) annotation(
    Placement(visible = true, transformation(origin = {-10, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c32(y = S3.t >= 0.5) annotation(
    Placement(visible = true, transformation(origin = {30, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T32 annotation(
    Placement(visible = true, transformation(origin = {-10, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S4(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {108, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T45 annotation(
    Placement(visible = true, transformation(origin = {108, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c45(y = S4.t >= 100) annotation(
    Placement(visible = true, transformation(origin = {148, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S5(initialStep = false) annotation(
    Placement(visible = true, transformation(origin = {108, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.R_action acs3(action_name = "cs") annotation(
    Placement(visible = true, transformation(origin = {158, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T54 annotation(
    Placement(visible = true, transformation(origin = {108, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c54(y = S5.t >= 20) annotation(
    Placement(visible = true, transformation(origin = {148, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-120, 10}, {-120, -8}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-120, -12}, {-120, -30}}));
  connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-120, -50}, {-120, -68}}));
  connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-120, -72}, {-120, -82}, {-150, -82}, {-150, 40}, {-120, 40}, {-120, 30}}));
  connect(T10.C, c10.y) annotation(
    Line(points = {{-108, -70}, {-90, -70}}, color = {255, 0, 255}));
  connect(T01.C, c01.y) annotation(
    Line(points = {{-108, -10}, {-90, -10}}, color = {255, 0, 255}));
  connect(rb1.y, b2r1.u) annotation(
    Line(points = {{22, 70}, {38, 70}}, color = {255, 0, 255}));
  connect(b2r1.y, P.u) annotation(
    Line(points = {{62, 70}, {102, 70}}, color = {0, 0, 127}));
  connect(P.y, wr1.u) annotation(
    Line(points = {{79, 70}, {118, 70}}, color = {0, 0, 127}));
  connect(S0.X, acs1.phase_active) annotation(
    Line(points = {{-108, 20}, {-92, 20}}, color = {255, 0, 255}));
  connect(c23.y, T23.C) annotation(
    Line(points = {{19, -10}, {1, -10}}, color = {255, 0, 255}));
  connect(T32.C, c32.y) annotation(
    Line(points = {{2, -70}, {20, -70}}, color = {255, 0, 255}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{-10, 10}, {-10, -8}}));
  connect(T23.OUT, S3.IN) annotation(
    Line(points = {{-10, -12}, {-10, -30}}));
  connect(S3.OUT, T32.IN) annotation(
    Line(points = {{-10, -50}, {-10, -68}}));
  connect(T32.OUT, S2.IN) annotation(
    Line(points = {{-10, -72}, {-10, -82}, {-40, -82}, {-40, 40}, {-10, 40}, {-10, 30}}));
  connect(S3.X, acs2.phase_active) annotation(
    Line(points = {{2, -40}, {18, -40}}, color = {255, 0, 255}));
  connect(S4.OUT, T45.IN) annotation(
    Line(points = {{108, 10}, {108, -8}}));
  connect(T45.C, c45.y) annotation(
    Line(points = {{120, -10}, {138, -10}}, color = {255, 0, 255}));
  connect(S5.X, acs3.phase_active) annotation(
    Line(points = {{120, -40}, {136, -40}}, color = {255, 0, 255}));
  connect(T54.C, c54.y) annotation(
    Line(points = {{120, -70}, {138, -70}}, color = {255, 0, 255}));
  connect(T45.OUT, S5.IN) annotation(
    Line(points = {{108, -12}, {108, -30}}));
  connect(S5.OUT, T54.IN) annotation(
    Line(points = {{108, -50}, {108, -68}}));
  connect(T54.OUT, S4.IN) annotation(
    Line(points = {{108, -72}, {108, -82}, {80, -82}, {80, 40}, {108, 40}, {108, 30}}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
  experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-6, Interval = 0.4),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end E001_Monolithic;