within SFC.Tests.TestWithCyclicGroup;

model test_semaphore_001 "Semaphore test with period=1"
 extends SFC.BasicBlocks.ModelWithCyclicGroup;
 SFC.BasicBlocks.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-30, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-30, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C01(y = sin(time) > 0.5)  annotation(
    Placement(visible = true, transformation(origin = {30, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C10(y = sin(time) > 0.6)  annotation(
    Placement(visible = true, transformation(origin = {30, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-30, 120}, {-30, 92}}));
 connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-30, 88}, {-30, 60}}));
 connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-30, 40}, {-30, 12}}));
 connect(T10.C, C10.y) annotation(
    Line(points = {{-18, 10}, {20, 10}}, color = {255, 0, 255}));
 connect(T01.C, C01.y) annotation(
    Line(points = {{-18, 90}, {20, 90}}, color = {255, 0, 255}));
 connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-30, 8}, {-30, -8}, {-70, -8}, {-70, 152}, {-30, 152}, {-30, 140}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div>Far vedere che nonostante le condizioni si verifichino in mezzo al periodo, lo scatto dell'SFC avviene sempre ad un multiplo del periodo &nbsp;</div><div>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
 __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
 __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end test_semaphore_001;