within SFC.Examples.SFC_and_CT_systems;

model E001_Monolithic
  extends Modelica.Icons.Example;
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-170, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-100, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-100, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1(initialStep = false)  annotation(
    Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-100, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c10(y = rpv.y <= 0.3)  annotation(
    Placement(visible = true, transformation(origin = {-60, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c01(y = rpv.y >= 0.7)  annotation(
    Placement(visible = true, transformation(origin = {-60, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P(a = {10, 1})  annotation(
    Placement(visible = true, transformation(origin = {90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Write_real wr1(variable_name = "pv")  annotation(
    Placement(visible = true, transformation(origin = {140, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean rb1(variable_name = "cs")  annotation(
    Placement(visible = true, transformation(origin = {0, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Math.BooleanToReal b2r1 annotation(
    Placement(visible = true, transformation(origin = {50, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_real rpv(variable_name = "pv")  annotation(
    Placement(visible = true, transformation(origin = {-180, 20}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.N_action acs1(action_name = "cs")  annotation(
    Placement(visible = true, transformation(origin = {-50, 20}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {30, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T23 annotation(
    Placement(visible = true, transformation(origin = {30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.N_action acs2(action_name = "cs") annotation(
    Placement(visible = true, transformation(origin = {80, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c23(y = S2.t >= 12) annotation(
    Placement(visible = true, transformation(origin = {70, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3(initialStep = false) annotation(
    Placement(visible = true, transformation(origin = {30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c32(y = S3.t >= 0.5) annotation(
    Placement(visible = true, transformation(origin = {70, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T32 annotation(
    Placement(visible = true, transformation(origin = {30, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-100, 10}, {-100, -8}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-100, -12}, {-100, -30}}));
  connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-100, -50}, {-100, -68}}));
  connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-100, -72}, {-100, -82}, {-130, -82}, {-130, 40}, {-100, 40}, {-100, 30}}));
  connect(T10.C, c10.y) annotation(
    Line(points = {{-88, -70}, {-70, -70}}, color = {255, 0, 255}));
  connect(T01.C, c01.y) annotation(
    Line(points = {{-88, -10}, {-70, -10}}, color = {255, 0, 255}));
  connect(rb1.y, b2r1.u) annotation(
    Line(points = {{22, 70}, {38, 70}}, color = {255, 0, 255}));
  connect(b2r1.y, P.u) annotation(
    Line(points = {{62, 70}, {78, 70}}, color = {0, 0, 127}));
  connect(P.y, wr1.u) annotation(
    Line(points = {{102, 70}, {118, 70}}, color = {0, 0, 127}));
  connect(S0.X, acs1.phase_active) annotation(
    Line(points = {{-88, 20}, {-72, 20}}, color = {255, 0, 255}));
  connect(c23.y, T23.C) annotation(
    Line(points = {{60, -10}, {42, -10}}, color = {255, 0, 255}));
  connect(T32.C, c32.y) annotation(
    Line(points = {{42, -70}, {60, -70}}, color = {255, 0, 255}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{30, 10}, {30, -8}}));
  connect(T23.OUT, S3.IN) annotation(
    Line(points = {{30, -12}, {30, -30}}));
  connect(S3.OUT, T32.IN) annotation(
    Line(points = {{30, -50}, {30, -68}}));
  connect(T32.OUT, S2.IN) annotation(
    Line(points = {{30, -72}, {30, -82}, {0, -82}, {0, 40}, {30, 40}, {30, 30}}));
  connect(S3.X, acs2.phase_active) annotation(
    Line(points = {{42, -40}, {58, -40}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
  experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-6, Interval = 0.4),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end E001_Monolithic;