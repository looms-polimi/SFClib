within SFC.Tests;

model testActionMI_SR "Set/Reset Action with a single set signal and reset signal"
  SFC.BasicBlocks.Step S10(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {79, 111}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition C1(y = S10.t > 2) annotation(
    Placement(visible = true, transformation(origin = {126, 80}, extent = {{-16, -10}, {16, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T10_11 annotation(
    Placement(visible = true, transformation(origin = {79, 79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S11 annotation(
    Placement(visible = true, transformation(origin = {79, 51}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Transition T11_10(Tcycle = 0.1)  annotation(
    Placement(visible = true, transformation(origin = {79, 19}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = S11.t > 1) annotation(
    Placement(visible = true, transformation(origin = {128, 19}, extent = {{-14, -11}, {14, 11}}, rotation = 0)));
  SFC.BasicBlocks.Step S01 annotation(
    Placement(visible = true, transformation(origin = {-109, 45}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition c00(y = S00.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-67, 78}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T01_02(Tcycle = 0.2)  annotation(
    Placement(visible = true, transformation(origin = {-109, 15}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S00(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-109, 111}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Transition T00_01 annotation(
    Placement(visible = true, transformation(origin = {-109, 77}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Condition c01(y = S01.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-65, 14}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S03 annotation(
    Placement(visible = true, transformation(origin = {-109, -73}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Transition T02_03 annotation(
    Placement(visible = true, transformation(origin = {-109, -47}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S02 annotation(
    Placement(visible = true, transformation(origin = {-109, -19}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Transition T03_00 annotation(
    Placement(visible = true, transformation(origin = {-109, -105}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Condition c02(y = S02.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-67, -48}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c03(y = S03.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-65, -106}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition(y = S12.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {124, -47}, extent = {{-16, -11}, {16, 11}}, rotation = 0)));
  SFC.BasicBlocks.Transition T13_10 annotation(
    Placement(visible = true, transformation(origin = {79, -103}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Transition T12_13(Tcycle = 0.1)  annotation(
    Placement(visible = true, transformation(origin = {79, -45}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S12 annotation(
    Placement(visible = true, transformation(origin = {79, -17}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Step S13 annotation(
    Placement(visible = true, transformation(origin = {79, -71}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition4(y = S13.t > 1) annotation(
    Placement(visible = true, transformation(origin = {123, -104}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.ActionMI_SR SR_00(m = 2, n = 2)  annotation(
    Placement(visible = true, transformation(origin = {-6, 108}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.ActionMI_SR SR_01(m = 2, n = 2)  annotation(
    Placement(visible = true, transformation(origin = {202, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S10.OUT, T10_11.IN) annotation(
    Line(points = {{79, 100}, {79, 82}}));
  connect(T10_11.C, C1.y) annotation(
    Line(points = {{94.6, 79}, {103.6, 79}, {103.6, 80}, {108, 80}}, color = {255, 0, 255}));
  connect(S11.OUT, T11_10.IN) annotation(
    Line(points = {{79, 40}, {79, 22}}));
  connect(T11_10.C, C2.y) annotation(
    Line(points = {{94.6, 19}, {113, 19}}, color = {255, 0, 255}));
  connect(T10_11.OUT, S11.IN) annotation(
    Line(points = {{79, 76.4}, {79, 62.4}}));
  connect(T00_01.OUT, S01.IN) annotation(
    Line(points = {{-109, 74.4}, {-109, 56.4}}));
  connect(T01_02.C, c01.y) annotation(
    Line(points = {{-93.4, 15}, {-87.9, 15}, {-87.9, 14}, {-79, 14}}, color = {255, 0, 255}));
  connect(S00.OUT, T00_01.IN) annotation(
    Line(points = {{-109, 100}, {-109, 80}}));
  connect(S01.OUT, T01_02.IN) annotation(
    Line(points = {{-109, 34}, {-109, 18}}));
  connect(T00_01.C, c00.y) annotation(
    Line(points = {{-93.4, 77}, {-90.4, 77}, {-90.4, 78}, {-81, 78}}, color = {255, 0, 255}));
  connect(S02.OUT, T02_03.IN) annotation(
    Line(points = {{-109, -30}, {-109, -44}}));
  connect(S03.OUT, T03_00.IN) annotation(
    Line(points = {{-109, -84}, {-109, -102}}));
  connect(T01_02.OUT, S02.IN) annotation(
    Line(points = {{-109, 12.4}, {-109, -7.6}}));
  connect(T02_03.OUT, S03.IN) annotation(
    Line(points = {{-109, -49.6}, {-109, -61.6}}));
  connect(T02_03.C, c02.y) annotation(
    Line(points = {{-94, -46}, {-82, -46}, {-82, -48}}, color = {255, 0, 255}));
  connect(T03_00.C, c03.y) annotation(
    Line(points = {{-94, -104}, {-80, -104}, {-80, -106}}, color = {255, 0, 255}));
  connect(T03_00.OUT, S00.IN) annotation(
    Line(points = {{-108, -108}, {-116, -108}, {-116, -130}, {-154, -130}, {-154, 140}, {-108, 140}, {-108, 122}}));
  connect(S12.OUT, T12_13.IN) annotation(
    Line(points = {{79, -28}, {79, -42}}));
  connect(T13_10.C, condition4.y) annotation(
    Line(points = {{94.6, -103}, {108.6, -103}, {108.6, -105}}, color = {255, 0, 255}));
  connect(S13.OUT, T13_10.IN) annotation(
    Line(points = {{79, -82}, {79, -100}}));
  connect(T12_13.C, condition.y) annotation(
    Line(points = {{94.6, -45}, {106, -45}, {106, -47}}, color = {255, 0, 255}));
  connect(T12_13.OUT, S13.IN) annotation(
    Line(points = {{79, -47.6}, {79, -59.6}}));
  connect(T11_10.OUT, S12.IN) annotation(
    Line(points = {{80, 16}, {80, -6}}));
  connect(T13_10.OUT, S10.IN) annotation(
    Line(points = {{80, -106}, {80, -130}, {38, -130}, {38, 136}, {80, 136}, {80, 122}}));
  connect(S00.X, SR_00.IN_S[1]) annotation(
    Line(points = {{-94, 112}, {-20, 112}}));
  connect(S01.X, SR_00.IN_R[1]) annotation(
    Line(points = {{-94, 46}, {-34, 46}, {-34, 104}, {-20, 104}}));
  connect(S02.X, SR_00.IN_S[2]) annotation(
    Line(points = {{-94, -18}, {-46, -18}, {-46, 112}, {-20, 112}}));
  connect(S03.X, SR_00.IN_R[2]) annotation(
    Line(points = {{-94, -72}, {-26, -72}, {-26, 104}, {-20, 104}}));
  connect(S10.X, SR_01.IN_R[1]) annotation(
    Line(points = {{94, 112}, {104, 112}, {104, 106}, {188, 106}}));
  connect(S11.X, SR_01.IN_S[1]) annotation(
    Line(points = {{94, 52}, {154, 52}, {154, 114}, {188, 114}}));
  connect(S12.X, SR_01.IN_R[2]) annotation(
    Line(points = {{94, -16}, {170, -16}, {170, 106}, {188, 106}}));
  connect(S13.X, SR_01.IN_S[2]) annotation(
    Line(points = {{94, -70}, {234, -70}, {234, 138}, {172, 138}, {172, 114}, {188, 114}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S1</u>. When S1 becomes active, action A is set and remains set until the end of the simulation.&nbsp;</div><div></div></div><div><br></div><div><br></div><div>&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/S2.png\"></div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-300, -100}, {300, 100}})),
  Icon(coordinateSystem(extent = {{-300, -100}, {300, 100}})));
end testActionMI_SR;