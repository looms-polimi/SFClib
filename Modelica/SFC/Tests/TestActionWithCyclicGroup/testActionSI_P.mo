within SFC.Tests.TestActionWithCyclicGroup;

model testActionSI_P "Set/Reset Action with a single set signal and reset signal"
  SFC.SFCelements.Transition T00_01 annotation(
    Placement(visible = true, transformation(origin = {-129, 77}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.SFCelements.Step S03 annotation(
    Placement(visible = true, transformation(origin = {-129, -73}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.SFCelements.Condition c00(y = S00.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-80, 76}, extent = {{-20, -12}, {20, 12}}, rotation = 0)));
  SFC.SFCelements.Step S01 annotation(
    Placement(visible = true, transformation(origin = {-129, 45}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.SFCelements.Step S00(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-129, 111}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.SFCelements.Transition T02_03 annotation(
    Placement(visible = true, transformation(origin = {-129, -47}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.SFCelements.Condition c01(y = S01.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-77, 14}, extent = {{-17, -10}, {17, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T03_00 annotation(
    Placement(visible = true, transformation(origin = {-129, -105}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.SFCelements.Condition c02(y = S02.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-80, -49}, extent = {{-20, -11}, {20, 11}}, rotation = 0)));
  SFC.SFCelements.Transition T01_02 annotation(
    Placement(visible = true, transformation(origin = {-129, 15}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.SFCelements.Condition c03(y = S03.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-79, -106}, extent = {{-19, -10}, {19, 10}}, rotation = 0)));
  SFC.SFCelements.Step S02 annotation(
    Placement(visible = true, transformation(origin = {-129, -19}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.SFCelements.ActionSI_P actionSI_P0 annotation(
    Placement(visible = true, transformation(origin = {-52, 112}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.ActionSI_P actionSI_P1 annotation(
    Placement(visible = true, transformation(origin = {-46, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T00_01.C, c00.y) annotation(
    Line(points = {{-113.4, 77}, {-107.7, 77}, {-107.7, 76}, {-102, 76}}, color = {255, 0, 255}));
  connect(T02_03.C, c02.y) annotation(
    Line(points = {{-113.4, -47}, {-102, -47}, {-102, -49}}, color = {255, 0, 255}));
  connect(S02.OUT, T02_03.IN) annotation(
    Line(points = {{-129, -30}, {-129, -44}}));
  connect(S01.OUT, T01_02.IN) annotation(
    Line(points = {{-129, 34}, {-129, 18}}));
  connect(T01_02.C, c01.y) annotation(
    Line(points = {{-113.4, 15}, {-107.9, 15}, {-107.9, 14}, {-96, 14}}, color = {255, 0, 255}));
  connect(T00_01.OUT, S01.IN) annotation(
    Line(points = {{-129, 74.4}, {-129, 56.4}}));
  connect(S00.OUT, T00_01.IN) annotation(
    Line(points = {{-129, 100}, {-129, 80}}));
  connect(S03.OUT, T03_00.IN) annotation(
    Line(points = {{-129, -84}, {-129, -102}}));
  connect(T02_03.OUT, S03.IN) annotation(
    Line(points = {{-129, -49.6}, {-129, -61.6}}));
  connect(T03_00.OUT, S00.IN) annotation(
    Line(points = {{-129, -107.6}, {-137, -107.6}, {-137, -129.6}, {-175, -129.6}, {-175, 140.4}, {-129, 140.4}, {-129, 122.4}}));
  connect(T01_02.OUT, S02.IN) annotation(
    Line(points = {{-129, 12.4}, {-129, -7.6}}));
  connect(T03_00.C, c03.y) annotation(
    Line(points = {{-113.4, -105}, {-100, -105}, {-100, -106}}, color = {255, 0, 255}));
  connect(S00.X, actionSI_P0.IN) annotation(
    Line(points = {{-114, 112}, {-66, 112}}));
  connect(S02.X, actionSI_P1.IN) annotation(
    Line(points = {{-114, -18}, {-60, -18}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S1</u>. When S1 becomes active, action A is set and remains set until the end of the simulation.&nbsp;</div><div></div></div><div><br></div><div><br></div><div>&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/S2.png\"></div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-300, -100}, {300, 100}})),
  Icon(coordinateSystem(extent = {{-300, -100}, {300, 100}})));
end testActionSI_P;