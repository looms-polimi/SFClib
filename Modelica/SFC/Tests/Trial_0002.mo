within SFC.Tests;

model Trial_0002
  extends Modelica.Icons.Example;
  SFC.BasicBlocks.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.AlternativeSplit2 split1 annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-50, 20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T02 annotation(
    Placement(visible = true, transformation(origin = {30, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-50, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T13 annotation(
    Placement(visible = true, transformation(origin = {-50, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T23 annotation(
    Placement(visible = true, transformation(origin = {30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.AlternativeJoin2 join1 annotation(
    Placement(visible = true, transformation(origin = {-10, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-10, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T30(Tcycle = 0.05)  annotation(
    Placement(visible = true, transformation(origin = {-10, -120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C01(y = S0.t > 1 and CC.y)  annotation(
    Placement(visible = true, transformation(origin = {-123, 20}, extent = {{-27, -10}, {27, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C02(y = S0.t > 1 and not CC.y)  annotation(
    Placement(visible = true, transformation(origin = {91, 20}, extent = {{33, -12}, {-33, 12}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C13(y = S1.t > 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-116, -40}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C23(y = S2.t > 0.8)  annotation(
    Placement(visible = true, transformation(origin = {79, -40}, extent = {{21, -10}, {-21, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C30(y = true)  annotation(
    Placement(visible = true, transformation(origin = {30, -120}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression CC(y = sin(time) > 0)  annotation(
    Placement(visible = true, transformation(origin = {-156, 70}, extent = {{-24, -10}, {24, 10}}, rotation = 0)));  

  Boolean A1(start=false),A2(start=false);
  Integer ctr(start=0);
  
algorithm
  when edge(S0.X) then A1:=true; end when; //S A1
  when S2.t>0.1 then A1:=false; end when; //R A1
  A2 := S0.X or S1.X;
  when edge(S1.X) then ctr :=ctr+1; end when; //P ctr++

equation
  connect(S0.OUT, split1.IN) annotation(
    Line(points = {{-10, 60}, {-10, 42}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-50, 18}, {-50, 0}}));
  connect(T02.OUT, S2.IN) annotation(
    Line(points = {{30, 18}, {30, 0}}));
  connect(S1.OUT, T13.IN) annotation(
    Line(points = {{-50, -20}, {-50, -38}}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{30, -20}, {30, -38}}));
  connect(join1.OUT, S3.IN) annotation(
    Line(points = {{-10, -60}, {-10, -80}}));
  connect(S3.OUT, T30.IN) annotation(
    Line(points = {{-10, -100}, {-10, -118}}));
  connect(T30.OUT, S0.IN) annotation(
    Line(points = {{-10, -122}, {-10, -134}, {-82, -134}, {-82, 92}, {-10, 92}, {-10, 80}}));
  connect(T30.C, C30.y) annotation(
    Line(points = {{0, -120}, {19, -120}}, color = {255, 0, 255}));
  connect(T23.C, C23.y) annotation(
    Line(points = {{40, -40}, {56, -40}}, color = {255, 0, 255}));
  connect(C13.y, T13.C) annotation(
    Line(points = {{-94, -40}, {-60, -40}}, color = {255, 0, 255}));
  connect(C01.y, T01.C) annotation(
    Line(points = {{-93, 20}, {-60, 20}}, color = {255, 0, 255}));
  connect(T02.C, C02.y) annotation(
    Line(points = {{40, 20}, {55, 20}}, color = {255, 0, 255}));
  connect(split1.OUT1, T01.IN) annotation(
    Line(points = {{-50, 40}, {-50, 40}, {-50, 22}, {-50, 22}}));
  connect(split1.OUT2, T02.IN) annotation(
    Line(points = {{30, 40}, {30, 40}, {30, 22}, {30, 22}}));
  connect(T13.OUT, join1.IN1) annotation(
    Line(points = {{-50, -42}, {-50, -42}, {-50, -58}, {-50, -58}}));
  connect(T23.OUT, join1.IN2) annotation(
    Line(points = {{30, -42}, {30, -42}, {30, -58}, {30, -58}}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end Trial_0002;