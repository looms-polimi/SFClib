within SFC.ContinuousSys.ContinuousBlocks;

model industrialPI
  Modelica.Blocks.Interfaces.BooleanInput cmd annotation(
    Placement(visible = true, transformation(origin = {0, 106}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 106}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner parameter Real k(unit = "1") = 1 "Gain";
  inner parameter Modelica.SIunits.Time T = 1 "Time Constant (T>0 required)";
  parameter Boolean Saturation = false "True if the regulator has a limit" annotation(
    Evaluate = true,
    HideResult = true,
    choices(__Dymola_checkBox = true));
  inner parameter Real yMax = 1 "Saturation limit of the regulator";
  inner parameter Real yMin = -yMax "Lower limit of the regulator";
  SFC.ContinuousSys.ContinuousBlocks.errorCompensator errorCompensator21 annotation(
    Placement(visible = true, transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiterPI(limitsAtInit = true, uMax = yMax) annotation(
    Placement(visible = true, transformation(origin = {60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.ContinuousSys.ContinuousBlocks.resetPI resetPI21 annotation(
    Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(cmd, resetPI21.commandIN) annotation(
    Line(points = {{0, 106}, {0, 11}}, color = {255, 0, 255}));
  connect(errorCompensator21.y, resetPI21.u) annotation(
    Line(points = {{-40, 0}, {-11, 0}}, color = {0, 0, 127}));
  if Saturation then
    connect(limiterPI.y, y) annotation(
      Line(points = {{72, 0}, {100, 0}, {100, 0}, {106, 0}}, color = {0, 0, 127}));
    connect(resetPI21.y, limiterPI.u) annotation(
      Line(points = {{22, 0}, {48, 0}, {48, 0}, {48, 0}}, color = {0, 0, 127}));
  else
    connect(resetPI21.y, y) annotation(
      Line(points = {{22, 0}, {32, 0}, {32, 20}, {88, 20}, {88, 0}, {106, 0}, {106, 0}}, color = {0, 0, 127}));
    connect(resetPI21.y, limiterPI.u) annotation(
      Line(points = {{22, 0}, {48, 0}, {48, 0}, {48, 0}}, color = {0, 0, 127}));
  end if;
  connect(cmd, errorCompensator21.actionIN) annotation(
    Line(points = {{0, 106}, {0, 106}, {0, 40}, {-50, 40}, {-50, 8}, {-50, 8}}, color = {255, 0, 255}));
  connect(u, errorCompensator21.u) annotation(
    Line(points = {{-110, 0}, {-60, 0}, {-60, 0}, {-60, 0}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Icon(graphics = {Rectangle(fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Line(origin = {-78.97, 0.05}, points = {{0, 80}, {0, -80}, {0, -80}}, thickness = 0.5, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 8), Line(origin = {0.78, -80.52}, points = {{-80, 0}, {80, 0}}, thickness = 0.5, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-12, -4.35}, points = {{-42, -75.6511}, {-42, 76.3489}, {-16, -5.65112}, {42, -5.65112}, {42, -75.6511}, {42, -73.6511}}, color = {28, 26, 207}, thickness = 1), Text(origin = {30, 56}, extent = {{-62, 22}, {62, -22}}, textString = "resetPI")}, coordinateSystem(initialScale = 0.1)));

end industrialPI;
