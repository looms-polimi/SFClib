within SFC.Tests.TestBranching;

model testPar3Branch "Parallel Split/Join test with three branches"
  SFC.SFCelements.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {0, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {0, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.ParallelSplit3 parallelSplit31 annotation(
    Placement(visible = true, transformation(origin = {0, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-40, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2 annotation(
    Placement(visible = true, transformation(origin = {0, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3 annotation(
    Placement(visible = true, transformation(origin = {40, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S4 annotation(
    Placement(visible = true, transformation(origin = {0, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S5 annotation(
    Placement(visible = true, transformation(origin = {40, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S6 annotation(
    Placement(visible = true, transformation(origin = {0, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T4 annotation(
    Placement(visible = true, transformation(origin = {0, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T5 annotation(
    Placement(visible = true, transformation(origin = {40, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T6 annotation(
    Placement(visible = true, transformation(origin = {0, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.ParallelJoin3 parallelJoin31 annotation(
    Placement(visible = true, transformation(origin = {0, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T7 annotation(
    Placement(visible = true, transformation(origin = {0, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C1(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {32, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C4(y = S2.t > 1) annotation(
    Placement(visible = true, transformation(origin = {70, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C5(y = S3.t > 2) annotation(
    Placement(visible = true, transformation(origin = {70, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C6(y = S4.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {101, -68}, extent = {{-23, -10}, {23, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C7(y = S1.t > 3) annotation(
    Placement(visible = true, transformation(origin = {30, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse(period = 2, startTime = 0.2, width = 20) annotation(
    Placement(visible = true, transformation(origin = {-38, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFC.SFCelements.CyclicGroup cyclicGroup annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T4.OUT, S4.IN) annotation(
    Line(points = {{0, 6}, {0, 6}, {0, -2}, {0, -2}}));
  connect(S2.OUT, T4.IN) annotation(
    Line(points = {{0, 18}, {0, 18}, {0, 10}, {0, 10}}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{12, 8}, {20, 8}, {20, 38}, {58, 38}, {58, 38}}, color = {255, 0, 255}));
  connect(T6.C, C6.y) annotation(
    Line(points = {{12, -32}, {29, -32}, {29, -68}, {76, -68}}, color = {255, 0, 255}));
  connect(T5.C, C5.y) annotation(
    Line(points = {{52, -12}, {60, -12}, {60, -12}, {58, -12}}, color = {255, 0, 255}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{12, 62}, {22, 62}, {22, 62}, {20, 62}}, color = {255, 0, 255}));
  connect(T7.C, C7.y) annotation(
    Line(points = {{12, -88}, {18, -88}, {18, -88}, {18, -88}}, color = {255, 0, 255}));
  connect(T7.OUT, S0.IN) annotation(
    Line(points = {{3.55271e-16, -90}, {3.55271e-16, -98}, {-56, -98}, {-56, 98}, {3.55271e-16, 98}, {3.55271e-16, 92}}));
  connect(parallelJoin31.OUT, T7.IN) annotation(
    Line(points = {{4.44089e-17, -77.8}, {4.44089e-17, -77.8}, {4.44089e-17, -77.8}, {4.44089e-17, -77.8}, {4.44089e-17, -85.8}, {4.44089e-17, -85.8}, {4.44089e-17, -85.8}, {4.44089e-17, -85.8}}));
  connect(S1.OUT, parallelJoin31.IN1) annotation(
    Line(points = {{-40, -20}, {-40, -20}, {-40, -20}, {-40, -20}, {-40, -74}, {-40, -74}, {-40, -74}, {-40, -74}}));
  connect(S5.OUT, parallelJoin31.IN3) annotation(
    Line(points = {{40, -52}, {40, -74}}));
  connect(S6.OUT, parallelJoin31.IN2) annotation(
    Line(points = {{0, -62}, {0, -62}, {0, -74}, {0, -74}}));
  connect(T6.OUT, S6.IN) annotation(
    Line(points = {{3.55271e-16, -34}, {3.55271e-16, -34}, {3.55271e-16, -42}, {3.55271e-16, -42}, {3.55271e-16, -42}, {3.55271e-16, -42}}));
  connect(S4.OUT, T6.IN) annotation(
    Line(points = {{0, -22}, {0, -22}, {0, -30}, {0, -30}}));
  connect(T5.OUT, S5.IN) annotation(
    Line(points = {{40, -14}, {40, -32}}));
  connect(S3.OUT, T5.IN) annotation(
    Line(points = {{40, 10}, {40, -10}}));
  connect(parallelSplit31.OUT3, S3.IN) annotation(
    Line(points = {{40, 48}, {40, 30}}));
  connect(parallelSplit31.OUT2, S2.IN) annotation(
    Line(points = {{0, 48}, {0, 48}, {0, 48}, {0, 48}, {0, 38}, {0, 38}}));
  connect(parallelSplit31.OUT1, S1.IN) annotation(
    Line(points = {{-40, 48}, {-40, 0}}));
  connect(T1.OUT, parallelSplit31.IN) annotation(
    Line(points = {{3.55271e-16, 60}, {3.55271e-16, 60}, {3.55271e-16, 60}, {3.55271e-16, 60}, {3.55271e-16, 52}, {3.55271e-16, 52}}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{0, 72}, {0, 72}, {0, 64}, {0, 64}, {0, 64}, {0, 64}}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Documentation(info = "<html><head></head><body><div><span class=\"Apple-style-span\" style=\"font-size: 12px;\">MEMO: con Tc =0 non visualizzo sempre S5 attivo&nbsp;</span></div><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><span class=\"Apple-style-span\" style=\"font-size: 12px;\"><div><span class=\"Apple-style-span\" style=\"font-size: 12px;\"><br></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px;\"><br></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px;\"><br></span></div>This test is equivalent to&nbsp;<i>testBranchingAlternative2</i>&nbsp;with the only difference of having&nbsp;</span><span style=\"font-size: 12px;\">three</span><span class=\"Apple-style-span\" style=\"font-size: 12px;\">&nbsp;sequences.</span><div><div style=\"font-size: 12px;\"><br></div><div style=\"font-size: 12px;\">In the test, the Step&nbsp;<b>S0</b>&nbsp;is connected to transition T1, that in turn is connected to&nbsp;<i>ParallelSplit3.&nbsp;</i>When<i>&nbsp;</i><b>S0</b>&nbsp;is active and the condition C1 becomes true, all the Steps&nbsp;<b>S1</b>,<b> S2</b>&nbsp;and&nbsp;<b>S3</b>&nbsp;become active contemporarily. From that point on, the systems evolves in three parallel sequences and the active step will be more that one at the same time. When the three sequences reach their final Steps - respectively&nbsp;<b>S1</b>,<b> S6</b>&nbsp;and&nbsp;<b>S5&nbsp;</b>&nbsp;- connected to the&nbsp;<i>ParallelJoin3</i>, when&nbsp;&nbsp;<b>S1</b>,<b>&nbsp;S6</b>&nbsp;and&nbsp;<b>S5</b>&nbsp;are all active and condition&nbsp;<b>C7</b>&nbsp;is verified,&nbsp;<b>S0</b>&nbsp;is activated.</div><div style=\"font-size: 12px;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"font-size: 12px;\"><span style=\"font-size: medium;\">The figure below represent the described parallel branching evolution.</span></div><div style=\"font-size: 12px;\"><div style=\"font-size: medium;\"><br></div><div style=\"font-size: medium;\">&nbsp;&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/ParBranches3.png\"></div></div><span class=\"Apple-style-span\" style=\"font-size: 12px;\"><div><br></div></span></div></body></html>"),
    experiment(StartTime = 0, StopTime = 20, Tolerance = 1e-06, Interval = 0.04),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end testPar3Branch;