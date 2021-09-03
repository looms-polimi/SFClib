within SFC.ContinuousSys.ContinuousTests;
model testErrorCompensator
  SFC.BasicBlocks.Condition C1(y = true)  annotation(
    Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = P.y > 29.99)  annotation(
    Placement(visible = true, transformation(origin = {-100, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-130, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-130, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-130, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-130, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(
    Placement(visible = true, transformation(origin = {-22, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P(a = {80, 42, 1}, b = {0.7}, y_start = 20)  annotation(
    Placement(visible = true, transformation(origin = {168, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1(height = 30, startTime = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-48, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiter1(limitsAtInit = true, uMax = 100)  annotation(
    Placement(visible = true, transformation(origin = {92, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-130, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T3 annotation(
    Placement(visible = true, transformation(origin = {-130, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action ON(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {-100, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action OFF(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {-100, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C3(y = P.y < 2)  annotation(
    Placement(visible = true, transformation(origin = {-100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.ContinuousSys.ContinuousBlocks.OnOffControl onOffControl1 annotation(
    Placement(visible = true, transformation(origin = {132, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.ContinuousSys.ContinuousBlocks.errorCompensator errorCompensator1 annotation(
    Placement(visible = true, transformation(origin = {6, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.mergeActions ON_OFF(n = 2)  annotation(
    Placement(visible = true, transformation(origin = {68, 16}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.PI PI(T = 40, k = 2 / 0.7)  annotation(
    Placement(visible = true, transformation(origin = {50, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(errorCompensator1.y, PI.u) annotation(
    Line(points = {{16, -24}, {36, -24}, {36, -24}, {38, -24}}, color = {0, 0, 127}));
  connect(PI.y, limiter1.u) annotation(
    Line(points = {{62, -24}, {78, -24}, {78, -24}, {80, -24}}, color = {0, 0, 127}));
  connect(limiter1.y, onOffControl1.regulatorIN) annotation(
    Line(points = {{103, -24}, {115, -24}}, color = {0, 0, 127}));
  connect(ON_OFF.y, onOffControl1.commandIN) annotation(
    Line(points = {{68, 4}, {68, 4}, {68, -2}, {132, -2}, {132, -16}, {132, -16}}, color = {255, 0, 255}));
  connect(ON_OFF.y, errorCompensator1.actionIN) annotation(
    Line(points = {{68, 4}, {68, 4}, {68, -2}, {6, -2}, {6, -16}, {6, -16}}, color = {255, 0, 255}));
  connect(OFF.actionOUT, ON_OFF.mergeIN[2]) annotation(
    Line(points = {{-88, -52}, {-70, -52}, {-70, 26}, {68, 26}, {68, 24}}));
  connect(ON.actionOUT, ON_OFF.mergeIN[1]) annotation(
    Line(points = {{-88, 8}, {-80, 8}, {-80, 38}, {68, 38}, {68, 24}}));
  connect(feedback1.y, errorCompensator1.u) annotation(
    Line(points = {{-13, -24}, {-10, -24}, {-10, -24}, {-7, -24}, {-7, -24}, {-6, -24}, {-6, -24}, {-5, -24}}, color = {0, 0, 127}));
  connect(onOffControl1.controllerOUT, P.u) annotation(
    Line(points = {{149.4, -24}, {152.4, -24}, {152.4, -24}, {155.4, -24}, {155.4, -24}, {155.4, -24}, {155.4, -24}, {155.4, -24}}, color = {0, 0, 127}));
  connect(step1.y, feedback1.u1) annotation(
    Line(points = {{-37, -24}, {-35, -24}, {-35, -24}, {-33, -24}, {-33, -24}, {-32, -24}, {-32, -24}, {-31, -24}}, color = {0, 0, 127}));
  connect(P.y, feedback1.u2) annotation(
    Line(points = {{179, -24}, {182, -24}, {182, -24}, {185, -24}, {185, -48}, {-23, -48}, {-23, -40}, {-23, -40}, {-23, -32}}, color = {0, 0, 127}));
  connect(T3.C, C3.y) annotation(
    Line(points = {{-118, -80}, {-112, -80}, {-112, -80}, {-110, -80}}, color = {255, 0, 255}));
  connect(S2.X, OFF.phase_active) annotation(
    Line(points = {{-118, -50}, {-110, -50}, {-110, -50}, {-110, -50}}, color = {255, 0, 255}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{-118, -20}, {-112, -20}, {-112, -20}, {-110, -20}}, color = {255, 0, 255}));
  connect(S1.X, ON.phase_active) annotation(
    Line(points = {{-118, 10}, {-110, 10}, {-110, 10}, {-110, 10}}, color = {255, 0, 255}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{-118, 40}, {-110, 40}, {-110, 40}, {-110, 40}}, color = {255, 0, 255}));
  connect(T3.OUT, S0.IN) annotation(
    Line(points = {{-130, -82}, {-130, -82}, {-130, -100}, {-160, -100}, {-160, 90}, {-130, 90}, {-130, 80}, {-130, 80}}));
  connect(S2.OUT, T3.IN) annotation(
    Line(points = {{-130, -60}, {-130, -60}, {-130, -78}, {-130, -78}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-130, -22}, {-130, -22}, {-130, -40}, {-130, -40}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-130, 0}, {-130, 0}, {-130, -18}, {-130, -18}}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-130, 38}, {-130, 38}, {-130, 20}, {-130, 20}}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-130, 60}, {-130, 60}, {-130, 42}, {-130, 42}, {-130, 42}}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    experiment(StartTime = 0, StopTime = 300, Tolerance = 1e-6, Interval = 0.6));end testErrorCompensator;
