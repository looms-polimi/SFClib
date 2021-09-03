within SFC.ContinuousSys.ContinuousTests;
model tankEx
  Modelica.StateGraph.Examples.Utilities.Tank tank1 annotation(
    Placement(visible = true, transformation(origin = {46, 18}, extent = {{-36, -36}, {36, 36}}, rotation = 0)));
  SFC.BasicBlocks.Step fill annotation(
    Placement(visible = true, transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.FinalStep End annotation(
    Placement(visible = true, transformation(origin = {-90, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t1 annotation(
    Placement(visible = true, transformation(origin = {-90, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t2 annotation(
    Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c1(y = idle.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-56, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c2(y = tank1.levelSensor > 5) annotation(
    Placement(visible = true, transformation(origin = {-56, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action open_valve annotation(
    Placement(visible = true, transformation(origin = {-56, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.StateGraph.Examples.Utilities.valve valveON annotation(
    Placement(visible = true, transformation(origin = {28, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.StateGraph.Examples.Utilities.Source source1 annotation(
    Placement(visible = true, transformation(origin = {28, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action close_valve(qualifierType = SFC.Types.Qualifier.R) annotation(
    Placement(visible = true, transformation(origin = {-56, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.StateGraph.Examples.Utilities.valve valveOFF annotation(
    Placement(visible = true, transformation(origin = {68, -18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  BasicBlocks.InitialStepNI idle annotation(
    Placement(visible = true, transformation(origin = {-90, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(idle.OUT, t1.IN) annotation(
    Line(points = {{-90, 56}, {-90, 56}, {-90, 42}, {-90, 42}}));
  connect(tank1.outflow1, valveOFF.outflow1) annotation(
    Line(points = {{68, 2}, {68, 2}, {68, -12}, {68, -12}}));
  connect(close_valve.actionBoolean, valveOFF.valveControl) annotation(
    Line(points = {{-46, -18}, {60, -18}}, color = {255, 0, 255}));
  connect(open_valve.actionBoolean, valveON.valveControl) annotation(
    Line(points = {{-45.6, 22}, {-17.6, 22}, {-17.6, 60}, {20, 60}}, color = {255, 0, 255}));
  connect(source1.outflow1, valveON.outflow1) annotation(
    Line(points = {{28, 82}, {28, 65}}));
  connect(valveON.inflow1, tank1.inflow1) annotation(
    Line(points = {{28, 55}, {28, 43}}));
  connect(End.X, close_valve.phase_active) annotation(
    Line(points = {{-78, -20}, {-66, -20}, {-66, -20}, {-66, -20}}, color = {255, 0, 255}));
  connect(t1.C, c1.y) annotation(
    Line(points = {{-78, 40}, {-67, 40}}, color = {255, 0, 255}));
  connect(fill.X, open_valve.phase_active) annotation(
    Line(points = {{-78, 20}, {-68, 20}, {-68, 22}, {-67, 22}, {-67, 20}, {-66, 20}}, color = {255, 0, 255}));
  connect(t2.C, c2.y) annotation(
    Line(points = {{-78, 0}, {-68, 0}, {-68, 0}, {-68, 0}}, color = {255, 0, 255}));
  connect(fill.OUT, t2.IN) annotation(
    Line(points = {{-90, 10}, {-90, 10}, {-90, 12}, {-90, 12}, {-90, 4}, {-90, 4}, {-90, 2}, {-90, 2}}));
  connect(t2.OUT, End.IN) annotation(
    Line(points = {{-90, -2}, {-90, -2}, {-90, -10}, {-90, -10}}));
  connect(t1.OUT, fill.IN) annotation(
    Line(points = {{-90, 38}, {-90, 38}, {-90, 40}, {-90, 40}, {-90, 32}, {-90, 32}, {-90, 30}, {-90, 30}}));
  annotation(
    Icon(coordinateSystem(grid = {0, 0})),
    uses(Modelica(version = "3.2.3")),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02));
end tankEx;