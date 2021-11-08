within SFC.Tests;
model testActionSI_N "Action with N qualifier - connected to an Initial Step"
  SFC.BasicBlocks.Transition T01_02(Tcycle = 1)  annotation(
    Placement(visible = true, transformation(origin = {-27, -1}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Condition c02(y = S02.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {24, -64}, extent = {{-22, -10}, {22, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c00(y = S00.t > 2) annotation(
    Placement(visible = true, transformation(origin = {15, 62}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T03_00(Tcycle = 1)  annotation(
    Placement(visible = true, transformation(origin = {-27, -121}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Transition T02_03(Tcycle = 1)  annotation(
    Placement(visible = true, transformation(origin = {-27, -63}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Condition c01(y = S01.t > 1) annotation(
    Placement(visible = true, transformation(origin = {17, -2}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T00_01(Tcycle = 1)  annotation(
    Placement(visible = true, transformation(origin = {-27, 61}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S02 annotation(
    Placement(visible = true, transformation(origin = {-27, -35}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Step S00(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-27, 95}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Step S03 annotation(
    Placement(visible = true, transformation(origin = {-27, -89}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition c03(y = S03.t > 1) annotation(
    Placement(visible = true, transformation(origin = {24, -122}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S01 annotation(
    Placement(visible = true, transformation(origin = {-27, 29}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.ActionSI_N N1 annotation(
    Placement(visible = true, transformation(origin = {108, 94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.ActionSI_N N2 annotation(
    Placement(visible = true, transformation(origin = {104, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
//  Boolean cond;
equation
// when c03.y then cond =true; end when;
  connect(T03_00.OUT, S00.IN) annotation(
    Line(points = {{-27, -124}, {-27, -139.6}, {-73, -139.6}, {-73, 112.4}, {-27, 112.4}, {-27, 106.4}}));
  connect(S02.OUT, T02_03.IN) annotation(
    Line(points = {{-27, -46}, {-27, -60}}));
  connect(T03_00.C, c03.y) annotation(
    Line(points = {{-11.4, -121}, {2, -121}, {2, -122}}, color = {255, 0, 255}));
  connect(S03.OUT, T03_00.IN) annotation(
    Line(points = {{-27, -100}, {-27, -118}}));
  connect(T00_01.OUT, S01.IN) annotation(
    Line(points = {{-27, 58.4}, {-27, 40.4}}));
  connect(T02_03.C, c02.y) annotation(
    Line(points = {{-11.4, -63}, {0, -63}, {0, -64}}, color = {255, 0, 255}));
  connect(T00_01.C, c00.y) annotation(
    Line(points = {{-11.4, 61}, {-8.4, 61}, {-8.4, 62}, {1, 62}}, color = {255, 0, 255}));
  connect(T01_02.OUT, S02.IN) annotation(
    Line(points = {{-27, -3.6}, {-27, -23.6}}));
  connect(S00.OUT, T00_01.IN) annotation(
    Line(points = {{-27, 84}, {-27, 64}}));
  connect(T02_03.OUT, S03.IN) annotation(
    Line(points = {{-27, -65.6}, {-27, -77.6}}));
  connect(T01_02.C, c01.y) annotation(
    Line(points = {{-11.4, -1}, {-5.9, -1}, {-5.9, -2}, {3, -2}}, color = {255, 0, 255}));
  connect(S01.OUT, T01_02.IN) annotation(
    Line(points = {{-27, 18}, {-27, 2}}));
  connect(S00.X, N1.IN) annotation(
    Line(points = {{-12, 96}, {94, 96}, {94, 94}}));
  connect(S02.X, N2.IN) annotation(
    Line(points = {{-12, -34}, {90, -34}}));

  annotation(
    Documentation(info = "<html><head></head><body><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S0</u>. When S0 becomes active, action A is set and remains set until S0 is deactivated. Being&nbsp;S0&nbsp;the initial Step, both A and S0 are active from the beginning of the simulation.</div><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><div><br></div></span><div><br></div>
    
    <img width=\"400\" src=\"modelica://SFC/Images/Test/N1.png\">
    
    </body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end testActionSI_N;