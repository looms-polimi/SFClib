within SFC.Tests.TestBranching;

model testPar2Branch "Parallel Split/Join test with two branches"
  SFC.SFCelements.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {10, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T13 annotation(
    Placement(visible = true, transformation(origin = {10, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.ParallelSplit2 pSplit annotation(
    Placement(visible = true, transformation(origin = {10, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-30, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-30, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3 annotation(
    Placement(visible = true, transformation(origin = {50, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S4 annotation(
    Placement(visible = true, transformation(origin = {50, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T4  annotation(
    Placement(visible = true, transformation(origin = {50, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T2  annotation(
    Placement(visible = true, transformation(origin = {-30, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T5 annotation(
    Placement(visible = true, transformation(origin = {10, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C13(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {40, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C4(y = S3.t > 1) annotation(
    Placement(visible = true, transformation(origin = {92, 1}, extent = {{-22, -11}, {22, 11}}, rotation = 0)));
  SFC.SFCelements.Condition C5(y = S2.t > 4) annotation(
    Placement(visible = true, transformation(origin = {53, -90}, extent = {{-23, -10}, {23, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C2(y = S1.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {16, 2}, extent = {{-26, -10}, {26, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse(period = 2, width = 30) annotation(
    Placement(visible = true, transformation(origin = {100, -72}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.Branching.ParallelJoin2 pJoin annotation(
    Placement(visible = true, transformation(origin = {10, -76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFCelements.CyclicGroup cyclicGroup(period = 0.01)  annotation(
    Placement(visible = true, transformation(origin = {-88, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T2.C, C2.y) annotation(
    Line(points = {{-18, 2}, {-13, 2}}, color = {255, 0, 255}));
  connect(T5.C, C5.y) annotation(
    Line(points = {{22, -90}, {28, -90}}, color = {255, 0, 255}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{62, 2}, {65, 2}, {65, 1}, {68, 1}}, color = {255, 0, 255}));
  connect(T13.C, C13.y) annotation(
    Line(points = {{22, 62}, {30, 62}, {30, 62}, {28, 62}}, color = {255, 0, 255}));
  connect(T5.OUT, S0.IN) annotation(
    Line(points = {{10, -92}, {9.75, -92}, {9.75, -94}, {9.5, -94}, {9.5, -102}, {-56, -102}, {-56, 98}, {10, 98}, {10, 92}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-30, 0}, {-30, -12}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-30, 16}, {-30, 16}, {-30, 16}, {-30, 16}, {-30, 4}, {-30, 4}, {-30, 4}, {-30, 4}}));
  connect(T4.OUT, S4.IN) annotation(
    Line(points = {{50, 0}, {50, -12}}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{50, 16}, {50, 16}, {50, 16}, {50, 16}, {50, 4}, {50, 4}, {50, 4}, {50, 4}}));
  connect(pSplit.OUT2, S3.IN) annotation(
    Line(points = {{50, 48}, {50, 36}}));
  connect(pSplit.OUT1, S1.IN) annotation(
    Line(points = {{-30, 48}, {-30, 36}}));
  connect(T13.OUT, pSplit.IN) annotation(
    Line(points = {{10, 60}, {10, 60}, {10, 52}, {10, 52}, {10, 52}, {10, 52}}));
  connect(S0.OUT, T13.IN) annotation(
    Line(points = {{10, 72}, {10, 72}, {10, 64}, {10, 64}}));
  connect(S4.OUT, pJoin.IN2) annotation(
    Line(points = {{50, -32}, {50, -76}}));
  connect(pJoin.OUT, T5.IN) annotation(
    Line(points = {{10, -79.8}, {10, -87.8}}));
  connect(S2.OUT, pJoin.IN1) annotation(
    Line(points = {{-30, -32}, {-30, -76}}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div style=\"font-size: 12px; \">Parallel branching consists in the simultaneous activation of different sequences of system events.</div><div style=\"font-size: 12px; \"><br></div><div style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \">In the test, the Step <b>S0</b>&nbsp;</span>is connected to transition T13, that in turn is connected to&nbsp;<i>ParallelSplit2. </i>When<i> </i><b>S0</b>&nbsp;is active and the condition C13 becomes true, both&nbsp;steps <b>S1</b> and <b>S3</b> become active contemporarily. From that point on, the systems evolves in two parallel sequences and the active step will be more that one at the same time. When both the sequences reach their final Steps - respectively <b>S2</b> and <b>S4</b> - connected to the <i>ParallelJoin2</i>, when <b>S2</b> and <b>S4</b> are both active and condition <b>C5</b> is verified, <b>S0</b> is activated.</div><div style=\"font-size: 12px; \"><span style=\"font-size: medium;\"><br></span></div><div style=\"font-size: 12px; \"><span style=\"font-size: medium;\">The figure below represent the described parallel branching evolution.</span></div><div style=\"font-size: 12px; \"><div style=\"font-size: medium;\"><br></div><div style=\"font-size: medium;\">&nbsp;&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/ParBranches2.png\"></div></div></body></html>"),
    experiment(StartTime = 0, StopTime = 20, Tolerance = 1e-06, Interval = 0.02),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end testPar2Branch;