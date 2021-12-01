within SFC.Tests.TestBranching;

model testPar2Branch_Tc0 "Parallel Split/Join test with two branches - Tc=0"
extends SFC.BasicBlocks.ModelWithCyclicGroup;
  SFC.BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-16, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T13 annotation(
    Placement(visible = true, transformation(origin = {-16, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.ParallelSplit2 pSplit annotation(
    Placement(visible = true, transformation(origin = {-16, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-56, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-56, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {24, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S4 annotation(
    Placement(visible = true, transformation(origin = {24, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T4  annotation(
    Placement(visible = true, transformation(origin = {24, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T2  annotation(
    Placement(visible = true, transformation(origin = {-56, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T5 annotation(
    Placement(visible = true, transformation(origin = {-16, -102}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C13(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {14, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C4(y = S3.t > 1) annotation(
    Placement(visible = true, transformation(origin = {66, -11}, extent = {{-22, -11}, {22, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition C5(y = Cpulse.y) annotation(
    Placement(visible = true, transformation(origin = {27, -102}, extent = {{-23, -10}, {23, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = S1.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-26, -10}, {26, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse(period = 2, width = 30) annotation(
    Placement(visible = true, transformation(origin = {-64, 72}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Branching.ParallelJoin2 pJoin annotation(
    Placement(visible = true, transformation(origin = {-16, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T2.C, C2.y) annotation(
    Line(points = {{-44, -10}, {-39, -10}}, color = {255, 0, 255}));
  connect(T5.C, C5.y) annotation(
    Line(points = {{-4, -102}, {2, -102}}, color = {255, 0, 255}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{36, -10}, {39, -10}, {39, -11}, {42, -11}}, color = {255, 0, 255}));
  connect(T13.C, C13.y) annotation(
    Line(points = {{-4, 50}, {4, 50}, {4, 50}, {2, 50}}, color = {255, 0, 255}));
  connect(T5.OUT, S0.IN) annotation(
    Line(points = {{-16, -104}, {-16.25, -104}, {-16.25, -106}, {-16.5, -106}, {-16.5, -114}, {-82, -114}, {-82, 86}, {-16, 86}, {-16, 80}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-56, -12}, {-56, -24}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-56, 4}, {-56, 4}, {-56, 4}, {-56, 4}, {-56, -8}, {-56, -8}, {-56, -8}, {-56, -8}}));
  connect(T4.OUT, S4.IN) annotation(
    Line(points = {{24, -12}, {24, -24}}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{24, 4}, {24, 4}, {24, 4}, {24, 4}, {24, -8}, {24, -8}, {24, -8}, {24, -8}}));
  connect(pSplit.OUT2, S3.IN) annotation(
    Line(points = {{24, 36}, {24, 24}}));
  connect(pSplit.OUT1, S1.IN) annotation(
    Line(points = {{-56, 36}, {-56, 24}}));
  connect(T13.OUT, pSplit.IN) annotation(
    Line(points = {{-16, 48}, {-16, 48}, {-16, 40}, {-16, 40}, {-16, 40}, {-16, 40}}));
  connect(S0.OUT, T13.IN) annotation(
    Line(points = {{-16, 60}, {-16, 60}, {-16, 52}, {-16, 52}}));
  connect(S4.OUT, pJoin.IN2) annotation(
    Line(points = {{24, -44}, {24, -88}}));
  connect(pJoin.OUT, T5.IN) annotation(
    Line(points = {{-16, -91.8}, {-16, -99.8}}));
  connect(S2.OUT, pJoin.IN1) annotation(
    Line(points = {{-56, -44}, {-56, -88}}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div style=\"font-size: 12px; \">Parallel branching consists in the simultaneous activation of different sequences of system events.</div><div style=\"font-size: 12px; \"><br></div><div style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \">In the test, the Step <b>S0</b>&nbsp;</span>is connected to transition T13, that in turn is connected to&nbsp;<i>ParallelSplit2. </i>When<i> </i><b>S0</b>&nbsp;is active and the condition C13 becomes true, both&nbsp;steps <b>S1</b> and <b>S3</b> become active contemporarily. From that point on, the systems evolves in two parallel sequences and the active step will be more that one at the same time. When both the sequences reach their final Steps - respectively <b>S2</b> and <b>S4</b> - connected to the <i>ParallelJoin2</i>, when <b>S2</b> and <b>S4</b> are both active and condition <b>C5</b> is verified, <b>S0</b> is activated.</div><div style=\"font-size: 12px; \"><span style=\"font-size: medium;\"><br></span></div><div style=\"font-size: 12px; \"><span style=\"font-size: medium;\">The figure below represent the described parallel branching evolution.</span></div><div style=\"font-size: 12px; \"><div style=\"font-size: medium;\"><br></div><div style=\"font-size: medium;\">&nbsp;&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/ParBranches2.png\"></div></div></body></html>"),
    experiment(StartTime = 0, StopTime = 6, Tolerance = 1e-06, Interval = 0.012),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end testPar2Branch_Tc0;