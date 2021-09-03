within SFC.DevelTests;

model Trial_0003
  extends Modelica.Icons.Example;
  SFC.BasicBlocks.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T012 annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-50, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T13 annotation(
    Placement(visible = true, transformation(origin = {-50, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T23 annotation(
    Placement(visible = true, transformation(origin = {30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-50, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T340 annotation(
    Placement(visible = true, transformation(origin = {-10, -120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C012(y = S0.t > 1)  annotation(
    Placement(visible = true, transformation(origin = {34, 40}, extent = {{14, -10}, {-14, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C13(y = S1.t > 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-113, -40}, extent = {{-17, -10}, {17, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C24(y = S2.t > 0.2)  annotation(
    Placement(visible = true, transformation(origin = {72, -40}, extent = {{14, -10}, {-14, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C30(y = ramp1.y > 90)  annotation(
    Placement(visible = true, transformation(origin = {30, -120}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression CC(y = sin(time) > 0)  annotation(
    Placement(visible = true, transformation(origin = {-156, 70}, extent = {{-24, -10}, {24, 10}}, rotation = 0)));
  SFC.Branching.ParallelSplit2 split1 annotation(
    Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S4 annotation(
    Placement(visible = true, transformation(origin = {30, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.ParallelJoin2 join1 annotation(
    Placement(visible = true, transformation(origin = {-10, -98}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(duration = 2, height = 100, startTime = 1)  annotation(
    Placement(visible = true, transformation(origin = {-148, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S3.OUT, join1.IN1) annotation(
    Line(points = {{-50, -80}, {-50, -80}, {-50, -98}, {-50, -98}}));
  connect(join1.OUT, T340.IN) annotation(
    Line(points = {{-10, -102}, {-10, -102}, {-10, -118}, {-10, -118}}));
  connect(S4.OUT, join1.IN2) annotation(
    Line(points = {{30, -80}, {30, -80}, {30, -98}, {30, -98}}));
  connect(T23.OUT, S4.IN) annotation(
    Line(points = {{30, -42}, {30, -42}, {30, -60}, {30, -60}}));
  connect(T13.OUT, S3.IN) annotation(
    Line(points = {{-50, -42}, {-50, -42}, {-50, -60}, {-50, -60}}));
  connect(C13.y, T13.C) annotation(
    Line(points = {{-94, -40}, {-62, -40}, {-62, -40}, {-62, -40}}, color = {255, 0, 255}));
  connect(T23.C, C24.y) annotation(
    Line(points = {{42, -40}, {56, -40}, {56, -40}, {56, -40}}, color = {255, 0, 255}));
  connect(S1.OUT, T13.IN) annotation(
    Line(points = {{-50, -20}, {-50, -20}, {-50, -38}, {-50, -38}}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{30, -20}, {30, -20}, {30, -38}, {30, -38}}));
  connect(split1.OUT1, S1.IN) annotation(
    Line(points = {{-50, 20}, {-50, 20}, {-50, 0}, {-50, 0}}));
  connect(split1.OUT2, S2.IN) annotation(
    Line(points = {{30, 20}, {30, 20}, {30, 0}, {30, 0}}));
  connect(T012.C, C012.y) annotation(
    Line(points = {{2, 40}, {18, 40}, {18, 40}, {18, 40}}, color = {255, 0, 255}));
  connect(T012.OUT, split1.IN) annotation(
    Line(points = {{-10, 38}, {-10, 38}, {-10, 24}, {-10, 24}}));
  connect(S0.OUT, T012.IN) annotation(
    Line(points = {{-10, 60}, {-10, 60}, {-10, 42}, {-10, 42}}));
  connect(T340.OUT, S0.IN) annotation(
    Line(points = {{-10, -122}, {-10, -122}, {-10, -136}, {-78, -136}, {-78, 92}, {-10, 92}, {-10, 80}, {-10, 80}}));
  connect(T340.C, C30.y) annotation(
    Line(points = {{2, -120}, {18, -120}, {18, -120}, {20, -120}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end Trial_0003;