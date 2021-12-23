within SFC.Tests.TestWithCyclicGroup;

model test_cg_001 "SFC - Cycle group with period=1"
 parameter Real period = 0.5;
 SFC.SFCelements.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-30, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-30, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.SFCelements.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C01(y = sin(time) > 0.4)  annotation(
    Placement(visible = true, transformation(origin = {81, 91}, extent = {{67, -13}, {-67, 13}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C10(y = sin(time) > 0.9)  annotation(
    Placement(visible = true, transformation(origin = {82, 5}, extent = {{62, -15}, {-62, 15}}, rotation = 0)));
 inner SFC.SFCelements.CyclicGroup cyclicGroup(period = period)  annotation(
    Placement(visible = true, transformation(origin = {-190, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-30, 120}, {-30, 92}}));
 connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-30, 88}, {-30, 60}}));
 connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-30, 40}, {-30, 12}}));
 connect(T10.C, C10.y) annotation(
    Line(points = {{-18, 10}, {1, 10}, {1, 5}, {14, 5}}, color = {255, 0, 255}));
 connect(T01.C, C01.y) annotation(
    Line(points = {{-18, 90}, {0, 90}, {0, 91}, {7, 91}}, color = {255, 0, 255}));
 connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-30, 8}, {-30, -8}, {-70, -8}, {-70, 152}, {-30, 152}, {-30, 140}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body>The SFC evolution follow the rules explained in the <b>Transition</b> block.<div><br></div><div>When the step S0 is active and the condition C01 is verified, the SFC evolve in correspondence of a multiple of the cyclic group period. Then, the step S0 is deactivated and the step S1 become active.</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
 __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
 __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end test_cg_001;