within SFClib_examples;

model ControlledRCtee
  Modelica.Electrical.Analog.Basic.Ground gnd annotation(
    Placement(visible = true, transformation(origin = {0, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C(C = 1e-3)  annotation(
    Placement(visible = true, transformation(origin = {0, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1e5)  annotation(
    Placement(visible = true, transformation(origin = {-42, 39}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 1e5)  annotation(
    Placement(visible = true, transformation(origin = {36, 39}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalCurrent Ig annotation(
    Placement(visible = true, transformation(origin = {-20, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor Vs annotation(
    Placement(visible = true, transformation(origin = {24, 4}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Blocks.Logical.OnOffController rel(bandwidth = 0.2)  annotation(
    Placement(visible = true, transformation(origin = {-92, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.BooleanToReal b2r(realFalse = -0.1, realTrue = 0.1)  annotation(
    Placement(visible = true, transformation(origin = {-56, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput SPin annotation(
    Placement(visible = true, transformation(origin = {-155, 11}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -68}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput SPout annotation(
    Placement(visible = true, transformation(origin = {-57, -57}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, -66}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(
    Placement(visible = true, transformation(origin = {-83, 39}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 38}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(
    Placement(visible = true, transformation(origin = {68, 39}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {119, 35}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.FixedDelay del(delayTime = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-103, -57}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(C.n, gnd.p) annotation(
    Line(points = {{0, 0}, {0, -12}}, color = {0, 0, 255}));
  connect(R1.n, C.p) annotation(
    Line(points = {{-32, 39}, {-20, 39}, {-20, 20}, {0, 20}}, color = {0, 0, 255}));
  connect(C.p, R2.p) annotation(
    Line(points = {{0, 20}, {0.5, 20}, {0.5, 39}, {26, 39}}, color = {0, 0, 255}));
  connect(gnd.p, Ig.p) annotation(
    Line(points = {{0, -12}, {-20, -12}, {-20, -5}}, color = {0, 0, 255}));
  connect(Ig.n, C.p) annotation(
    Line(points = {{-20, 15}, {-20, 20}, {0, 20}}, color = {0, 0, 255}));
  connect(C.p, Vs.p) annotation(
    Line(points = {{0, 20}, {24, 20}, {24, 14}}, color = {0, 0, 255}));
  connect(gnd.p, Vs.n) annotation(
    Line(points = {{0, -12}, {24, -12}, {24, -6}}, color = {0, 0, 255}));
  connect(b2r.y, Ig.i) annotation(
    Line(points = {{-45, 5}, {-32, 5}}, color = {0, 0, 127}));
  connect(rel.y, b2r.u) annotation(
    Line(points = {{-81, 5}, {-68, 5}}, color = {255, 0, 255}));
  connect(Vs.v, rel.u) annotation(
    Line(points = {{35, 4}, {41, 4}, {41, -37}, {-113, -37}, {-113, -1}, {-104, -1}}, color = {0, 0, 127}));
  connect(R2.n, n) annotation(
    Line(points = {{46, 39}, {68, 39}}, color = {0, 0, 255}));
  connect(p, R1.p) annotation(
    Line(points = {{-83, 39}, {-52, 39}}, color = {0, 0, 255}));
  connect(SPin, rel.reference) annotation(
    Line(points = {{-155, 11}, {-104, 11}}, color = {0, 0, 127}));
  connect(SPin, del.u) annotation(
    Line(points = {{-155, 11}, {-130, 11}, {-130, -57}, {-115, -57}}, color = {0, 0, 127}));
  connect(SPout, del.y) annotation(
    Line(points = {{-57, -57}, {-92, -57}}, color = {0, 0, 127}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}}, grid = {1, 1})));
end ControlledRCtee;