within SFC.Tests.TestWithCyclicGroup;

model test_cg_005 "Two consecutive true conditions with a CyclicGroup"
 SFC.SFCelements.Step S20(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-17, 95}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.SFCelements.Transition T20_21 annotation(
    Placement(visible = true, transformation(origin = {-19, 63}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 inner SFC.SFCelements.CyclicGroup cyclicGroup annotation(
    Placement(visible = true, transformation(origin = {-190, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanPulse Cpulse(period = 2, width = 30) annotation(
    Placement(visible = true, transformation(origin = {258, 68}, extent = {{26, -26}, {-26, 26}}, rotation = 0)));
 SFCelements.Step S21 annotation(
    Placement(visible = true, transformation(origin = {-15, 33}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFCelements.Transition T21_22 annotation(
    Placement(visible = true, transformation(origin = {-16, -4}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression condition(y = S21.t > 2)  annotation(
    Placement(visible = true, transformation(origin = {89, -2}, extent = {{23, -10}, {-23, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C5(y = sin(5 * time) > 0) annotation(
    Placement(visible = true, transformation(origin = {93, 63}, extent = {{51, -19}, {-51, 19}}, rotation = 0)));
equation
  connect(S20.OUT, T20_21.IN) annotation(
    Line(points = {{-17, 84}, {-19, 84}, {-19, 66}}));
  connect(T20_21.OUT, S21.IN) annotation(
    Line(points = {{-19, 59.2}, {-15, 59.2}, {-15, 43.2}}));
  connect(S21.OUT, T21_22.IN) annotation(
    Line(points = {{-15, 22}, {-17, 22}, {-17, 0}}));
  connect(T21_22.OUT, S20.IN) annotation(
    Line(points = {{-16, -8}, {-16, -60}, {-94, -60}, {-94, 134}, {-16, 134}, {-16, 106}}));
  connect(T21_22.C, condition.y) annotation(
    Line(points = {{6, -4}, {35, -4}, {35, -2}, {64, -2}}, color = {255, 0, 255}));
 connect( T20_21.C, C5.y) annotation(
    Line(points = {{4, 64}, {16, 64}, {16, 63}, {37, 63}}, color = {255, 0, 255}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div>Caso particolare: cpulse come condizione.&nbsp;</div><div><br></div><div>###T: event at t=4, INact=true, C=true, next firing at 4</div><div><br></div><div><div>###T: event at t=6, INact=true, C=true, next firing at 6</div><div><br></div><div>###T: event at t=8, INact=true, C=true, next firing at 8</div><div><br></div><div>###T: event at t=10, INact=true, C=true, next firing at 10</div></div><div><br></div><div><br></div><div>schedula l'evento allo stesso t a cui lo vede e non fa mai fire&nbsp;</div><div>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end test_cg_005;