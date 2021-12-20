within SFC.Tests.TestWithCyclicGroup;

model test_cg_002 "SFC - Two separate SFC with the same Cyclic Group with period=1 "
 inner SFC.BasicBlocks.CyclicGroup cyclicGroup(period = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-190, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Step S20(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-157, 101}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition C20_21(y = S20.t > 1.8) annotation(
    Placement(visible = true, transformation(origin = {-68, 69}, extent = {{-38, -11}, {38, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T20_21 annotation(
    Placement(visible = true, transformation(origin = {-159, 69}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 SFC.BasicBlocks.Step S21 annotation(
    Placement(visible = true, transformation(origin = {-155, 39}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition C21_22(y = S21.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-65, 5}, extent = {{-37, -13}, {37, 13}}, rotation = 0)));
 SFC.BasicBlocks.Transition T21_22 annotation(
    Placement(visible = true, transformation(origin = {-156, 2}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Step S22 annotation(
    Placement(visible = true, transformation(origin = {-157, -27}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition C22_20(y = S22.t > 2.1) annotation(
    Placement(visible = true, transformation(origin = {-66, -58}, extent = {{-36, -14}, {36, 14}}, rotation = 0)));
 SFC.BasicBlocks.Transition T22_20 annotation(
    Placement(visible = true, transformation(origin = {-156, -62}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 BasicBlocks.Step S10(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {89, 103}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 BasicBlocks.Condition condition2(y = S10.t > 1.3) annotation(
    Placement(visible = true, transformation(origin = {178, 71}, extent = {{-38, -11}, {38, 11}}, rotation = 0)));
 BasicBlocks.Transition transition annotation(
    Placement(visible = true, transformation(origin = {87, 71}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 BasicBlocks.Step S11 annotation(
    Placement(visible = true, transformation(origin = {91, 41}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition condition1(y = S11.t > 1.3) annotation(
    Placement(visible = true, transformation(origin = {183, 7}, extent = {{-39, -13}, {39, 13}}, rotation = 0)));
 BasicBlocks.Transition transition1 annotation(
    Placement(visible = true, transformation(origin = {90, 4}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 BasicBlocks.Step S12 annotation(
    Placement(visible = true, transformation(origin = {89, -25}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition condition(y = S12.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {184, -56}, extent = {{-40, -14}, {40, 14}}, rotation = 0)));
 BasicBlocks.Transition transition2 annotation(
    Placement(visible = true, transformation(origin = {90, -60}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
equation
  connect(T20_21.C, C20_21.y) annotation(
    Line(points = {{-136.2, 69}, {-110, 69}}, color = {255, 0, 255}));
  connect(S20.OUT, T20_21.IN) annotation(
    Line(points = {{-157, 90}, {-159, 90}, {-159, 72}}));
  connect(T20_21.OUT, S21.IN) annotation(
    Line(points = {{-159, 65.2}, {-155, 65.2}, {-155, 49.2}}));
  connect(T21_22.C, C21_22.y) annotation(
    Line(points = {{-134.4, 2}, {-116.4, 2}, {-116.4, 5}, {-106, 5}}, color = {255, 0, 255}));
  connect(S21.OUT, T21_22.IN) annotation(
    Line(points = {{-155, 28}, {-157, 28}, {-157, 6}}));
  connect(T21_22.OUT, S22.IN) annotation(
    Line(points = {{-156, -1.6}, {-156, -15.6}}));
  connect(T22_20.C, C22_20.y) annotation(
    Line(points = {{-134.4, -62}, {-108.4, -62}, {-108.4, -58}, {-106, -58}}, color = {255, 0, 255}));
  connect(T22_20.OUT, S20.IN) annotation(
    Line(points = {{-156, -65.6}, {-156, -77.6}, {-220, -77.6}, {-220, 124.4}, {-156, 124.4}, {-156, 112.4}}));
  connect(S22.OUT, T22_20.IN) annotation(
    Line(points = {{-157, -38}, {-157, -58}}));
  connect(S10.OUT, transition.IN) annotation(
    Line(points = {{89, 92}, {87, 92}, {87, 74}}));
  connect(transition.C, condition2.y) annotation(
    Line(points = {{109.8, 71}, {136, 71}}, color = {255, 0, 255}));
  connect(transition.OUT, S11.IN) annotation(
    Line(points = {{87, 67.2}, {91, 67.2}, {91, 51.2}}));
  connect(S11.OUT, transition1.IN) annotation(
    Line(points = {{91, 30}, {89, 30}, {89, 8}}));
  connect(transition1.C, condition1.y) annotation(
    Line(points = {{111.6, 4}, {129.6, 4}, {129.6, 7}, {140, 7}}, color = {255, 0, 255}));
  connect(transition1.OUT, S12.IN) annotation(
    Line(points = {{90, 0.4}, {90, -13.6}}));
  connect(transition2.C, condition.y) annotation(
    Line(points = {{111.6, -60}, {137.6, -60}, {137.6, -56}, {140, -56}}, color = {255, 0, 255}));
  connect(S12.OUT, transition2.IN) annotation(
    Line(points = {{89, -36}, {89, -56}}));
  connect(transition2.OUT, S10.IN) annotation(
    Line(points = {{90, -63.6}, {90, -75.6}, {26, -75.6}, {26, 126.4}, {90, 126.4}, {90, 114.4}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div>The two SFC evolve indipendently following the same cyclic group period.&nbsp;</div><div>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end test_cg_002;