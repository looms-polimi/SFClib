within SFC.Tests.TestWithCyclicGroup;

model test_TrueCond "Two consecutive true conditions with a CyclicGroup"
 SFC.BasicBlocks.Step S20(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-17, 95}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition C20_21(y = S20.t > 2) annotation(
    Placement(visible = true, transformation(origin = {72, 63}, extent = {{-38, -11}, {38, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T20_21 annotation(
    Placement(visible = true, transformation(origin = {-19, 63}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 SFC.BasicBlocks.Step S21 annotation(
    Placement(visible = true, transformation(origin = {-15, 33}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition C21_22(y = true) annotation(
    Placement(visible = true, transformation(origin = {65, -1}, extent = {{-27, -13}, {27, 13}}, rotation = 0)));
 SFC.BasicBlocks.Transition T21_22 annotation(
    Placement(visible = true, transformation(origin = {-16, -4}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Step S22 annotation(
    Placement(visible = true, transformation(origin = {-17, -33}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition C22_20(y = true) annotation(
    Placement(visible = true, transformation(origin = {61, -64}, extent = {{-27, -14}, {27, 14}}, rotation = 0)));
 SFC.BasicBlocks.Transition T22_20 annotation(
    Placement(visible = true, transformation(origin = {-16, -68}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 inner SFC.BasicBlocks.CyclicGroup cyclicGroup(period = 0.5) annotation(
    Placement(visible = true, transformation(origin = {-190, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T20_21.C, C20_21.y) annotation(
    Line(points = {{3.8, 63}, {30, 63}}, color = {255, 0, 255}));
  connect(S20.OUT, T20_21.IN) annotation(
    Line(points = {{-17, 84}, {-19, 84}, {-19, 66}}));
  connect(T20_21.OUT, S21.IN) annotation(
    Line(points = {{-19, 59.2}, {-15, 59.2}, {-15, 43.2}}));
  connect(T21_22.C, C21_22.y) annotation(
    Line(points = {{5.6, -4}, {23.6, -4}, {23.6, -1}, {34.6, -1}}, color = {255, 0, 255}));
  connect(S21.OUT, T21_22.IN) annotation(
    Line(points = {{-15, 22}, {-17, 22}, {-17, 0}}));
  connect(T21_22.OUT, S22.IN) annotation(
    Line(points = {{-16, -7.6}, {-16, -21.6}}));
  connect(T22_20.C, C22_20.y) annotation(
    Line(points = {{5.6, -68}, {31.6, -68}, {31.6, -64}, {31, -64}}, color = {255, 0, 255}));
  connect(T22_20.OUT, S20.IN) annotation(
    Line(points = {{-16, -71.6}, {-16, -83.6}, {-80, -83.6}, {-80, 118.4}, {-16, 118.4}, {-16, 106.4}}));
  connect(S22.OUT, T22_20.IN) annotation(
    Line(points = {{-17, -44}, {-17, -64}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div><b>SFC con due condizioni consecutive true, come previsto entrambe scattano al multiplo del periodo successivo, gestite dal cyclicGroup&nbsp;</b></div><div><br></div><div>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end test_TrueCond;