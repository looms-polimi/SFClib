within SFC.ContinuousSys.ContinuousTests;

model testErrorCompensatorPI
  SFC.BasicBlocks.Condition C1(y = true) annotation(
    Placement(visible = true, transformation(origin = {-60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = P.y > 29.99) annotation(
    Placement(visible = true, transformation(origin = {-60, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-90, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-90, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(
    Placement(visible = true, transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P(a = {80, 42, 1}, b = {0.7}, y_start = 20) annotation(
    Placement(visible = true, transformation(origin = {70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1(height = 30, startTime = 0) annotation(
    Placement(visible = true, transformation(origin = {-18, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-90, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T3 annotation(
    Placement(visible = true, transformation(origin = {-90, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action ON(qualifierType = SFC.Types.Qualifier.P) annotation(
    Placement(visible = true, transformation(origin = {-60, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action OFF(qualifierType = SFC.Types.Qualifier.P) annotation(
    Placement(visible = true, transformation(origin = {-60, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C3(y = P.y < 0) annotation(
    Placement(visible = true, transformation(origin = {-60, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.mergeActions ON_OFF(n = 2) annotation(
    Placement(visible = true, transformation(origin = {40, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  SFC.ContinuousSys.ContinuousBlocks.industrialPI PI(Saturation = true, T = 40, k = 2 / 0.7, yMax = 100) annotation(
    Placement(visible = true, transformation(origin = {40, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ON_OFF.y, PI.cmd) annotation(
    Line(points = {{40, 38}, {40, 38}, {40, 20}, {40, 20}}, color = {255, 0, 255}));
  connect(feedback1.y, PI.u) annotation(
    Line(points = {{20, 10}, {29, 10}}, color = {0, 0, 127}));
  connect(PI.y, P.u) annotation(
    Line(points = {{51, 10}, {58, 10}}, color = {0, 0, 127}));
  connect(T3.OUT, S0.IN) annotation(
    Line(points = {{-90, -82}, {-90, -98}, {-120, -98}, {-120, 90}, {-90, 90}, {-90, 80}}));
  connect(ON.actionOUT, ON_OFF.mergeIN[1]) annotation(
    Line(points = {{-49.6, 8}, {-39.6, 8}, {-39.6, 60}, {0.399998, 60}, {0.399998, 60}, {40.4, 60}}));
  connect(OFF.actionOUT, ON_OFF.mergeIN[2]) annotation(
    Line(points = {{-49.6, -52}, {-39.6, -52}, {-39.6, 60}, {0.399998, 60}, {0.399998, 60}, {40.4, 60}}));
  connect(T3.C, C3.y) annotation(
    Line(points = {{-78, -80}, {-72, -80}}, color = {255, 0, 255}));
  connect(S2.X, OFF.phase_active) annotation(
    Line(points = {{-78, -50}, {-70, -50}}, color = {255, 0, 255}));
  connect(S1.X, ON.phase_active) annotation(
    Line(points = {{-78, 10}, {-70, 10}}, color = {255, 0, 255}));
  connect(S2.OUT, T3.IN) annotation(
    Line(points = {{-90, -60}, {-90, -78}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-90, -22}, {-90, -40}}));
  connect(step1.y, feedback1.u1) annotation(
    Line(points = {{-7, 10}, {2, 10}}, color = {0, 0, 127}));
  connect(feedback1.u2, P.y) annotation(
    Line(points = {{10, 2}, {10, -4}, {10, -4}, {10, -10}, {90, -10}, {90, 10}, {81, 10}}, color = {0, 0, 127}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-90, 0}, {-90, -18}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{-78, -20}, {-71, -20}}, color = {255, 0, 255}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-90, 38}, {-90, 20}}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-90, 60}, {-90, 42}}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{-78, 40}, {-71, 40}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    experiment(StartTime = 0, StopTime = 1500, Tolerance = 1e-06, Interval = 3));
end testErrorCompensatorPI;
