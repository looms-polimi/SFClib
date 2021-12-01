within SFC.Tests.TestWithCyclicGroup;

model test_semaphore_003_pulse "Semaphore test with period=1"
 extends SFC.BasicBlocks.ModelWithCyclicGroup;
 SFC.BasicBlocks.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-30, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Transition T01(label = "T01")  annotation(
    Placement(visible = true, transformation(origin = {-30, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Transition T10(label = "T10")  annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C01(y = S0.t > 0.5)  annotation(
    Placement(visible = true, transformation(origin = {30, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = sin(time) > 0) annotation(
    Placement(visible = true, transformation(origin = {52, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 SFC.BasicBlocks.BooleanPulse_mod_from_MSL bp(period = 2, width = 70)  annotation(
    Placement(visible = true, transformation(origin = {64, -38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-30, 120}, {-30, 92}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-30, 88}, {-30, 60}}));
  connect(T01.C, C01.y) annotation(
    Line(points = {{-18, 90}, {20, 90}}, color = {255, 0, 255}));
  connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-30, 40}, {-30, 12}}));
  connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-30, 8}, {-30, -16}, {-66, -16}, {-66, 154}, {-30, 154}, {-30, 140}}));
 connect(T10.C, bp.y) annotation(
    Line(points = {{-18, 10}, {12, 10}, {12, -38}, {54, -38}}, color = {255, 0, 255}));
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
end test_semaphore_003_pulse;