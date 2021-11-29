within SFC.Tests.TestBranching;

model testPar2Branch_Tcnot0 "Parallel Split/Join test with two branches - Tc=0"
  SFC.BasicBlocks.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-16, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T13(Tcycle = 2)  annotation(
    Placement(visible = true, transformation(origin = {-16, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.ParallelJoin2 pJoin annotation(
    Placement(visible = true, transformation(origin = {-16, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.ParallelSplit2 pSplit annotation(
    Placement(visible = true, transformation(origin = {-16, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T5(Tcycle = 1)  annotation(
    Placement(visible = true, transformation(origin = {-16, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C13(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {23, 50}, extent = {{-19, -10}, {19, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C5(y = Cpulse.y) annotation(
    Placement(visible = true, transformation(origin = {14, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse(period = 2, width = 30) annotation(
    Placement(visible = true, transformation(origin = {-50, 68}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.Tests.TestBranching.testPar2Brach.subBranch1 subBranch1 annotation(
    Placement(visible = true, transformation(origin = {-54, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Tests.TestBranching.testPar2Brach.subBranch2 subBranch2 annotation(
    Placement(visible = true, transformation(origin = {24, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFC.Utilities.System_logger system_logger(log_on = true)  annotation(
    Placement(visible = true, transformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T5.C, C5.y) annotation(
    Line(points = {{-4, -70}, {2, -70}, {2, -70}, {2, -70}}, color = {255, 0, 255}));
  connect(T13.C, C13.y) annotation(
    Line(points = {{-4, 50}, {2, 50}}, color = {255, 0, 255}));
  connect(T5.OUT, S0.IN) annotation(
    Line(points = {{-16, -72}, {-16, -80}, {-118, -80}, {-118, 86}, {-16, 86}, {-16, 80}}));
  connect(pJoin.OUT, T5.IN) annotation(
    Line(points = {{-16, -59.8}, {-16, -67.8}}));
  connect(T13.OUT, pSplit.IN) annotation(
    Line(points = {{-16, 48}, {-16, 48}, {-16, 40}, {-16, 40}, {-16, 40}, {-16, 40}}));
  connect(S0.OUT, T13.IN) annotation(
    Line(points = {{-16, 60}, {-16, 60}, {-16, 52}, {-16, 52}}));
  connect(pSplit.OUT1, subBranch1.IN) annotation(
    Line(points = {{-56, 36}, {-54, 36}, {-54, 10}}));
  connect(subBranch1.OUT, pJoin.IN1) annotation(
    Line(points = {{-54, -10}, {-56, -10}, {-56, -56}}));
  connect(subBranch2.IN, pSplit.OUT2) annotation(
    Line(points = {{24, 2}, {24, 36}}));
  connect(subBranch2.OUT, pJoin.IN2) annotation(
    Line(points = {{24, -18}, {24, -56}}));
protected
  annotation(
    uses(Modelica(version = "3.2.3")),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div style=\"font-size: 12px; \">Parallel branching consists in the simultaneous activation of different sequences of system events.</div><div style=\"font-size: 12px; \"><br></div><div style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \">In the test, the Step <b>S0</b>&nbsp;</span>is connected to transition T13, that in turn is connected to&nbsp;<i>ParallelSplit2. </i>When<i> </i><b>S0</b>&nbsp;is active and the condition C13 becomes true, both&nbsp;steps <b>S1</b> and <b>S3</b> become active contemporarily. From that point on, the systems evolves in two parallel sequences and the active step will be more that one at the same time. When both the sequences reach their final Steps - respectively <b>S2</b> and <b>S4</b> - connected to the <i>ParallelJoin2</i>, when <b>S2</b> and <b>S4</b> are both active and condition <b>C5</b> is verified, <b>S0</b> is activated.</div><div style=\"font-size: 12px; \"><span style=\"font-size: medium;\"><br></span></div><div style=\"font-size: 12px; \"><span style=\"font-size: medium;\">The figure below represent the described parallel branching evolution.</span></div><div style=\"font-size: 12px; \"><div style=\"font-size: medium;\"><br></div><div style=\"font-size: medium;\">&nbsp;&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/ParBranches2.png\"></div></div></body></html>"),
  experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end testPar2Branch_Tcnot0;