within SFC.Examples.SFC_only;

model E002_branching
  extends Modelica.Icons.Example;
  SFC.SFCelements.Transition T5 annotation(
    Placement(visible = true, transformation(origin = {-92, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.ParallelSplit2 pSplit annotation(
    Placement(visible = true, transformation(origin = {-92, 126}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-132, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C13(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-62, 140}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse(period = 2, width = 30) annotation(
    Placement(visible = true, transformation(origin = {-188, 156}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C2(y = S1.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-93, 77}, extent = {{15, -9}, {-15, 9}}, rotation = 0)));
  SFC.SFCelements.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-92, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.01) annotation(
    Placement(visible = true, transformation(origin = {-190, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-132, 104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-52, 104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.ParallelJoin2 pJoin annotation(
    Placement(visible = true, transformation(origin = {-92, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C4(y = S3.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-14, 80}, extent = {{18, -10}, {-18, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-132, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T4 annotation(
    Placement(visible = true, transformation(origin = {-52, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C5(y = S2.t > 4) annotation(
    Placement(visible = true, transformation(origin = {-55, -13}, extent = {{13, -7}, {-13, 7}}, rotation = 0)));
  SFC.SFCelements.Step S4 annotation(
    Placement(visible = true, transformation(origin = {-52, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T13 annotation(
    Placement(visible = true, transformation(origin = {-92, 140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pSplit.OUT2, S3.IN) annotation(
    Line(points = {{-52, 126}, {-52, 114}}));
  connect(S0.OUT, T13.IN) annotation(
    Line(points = {{-92, 150}, {-92, 150}, {-92, 142}, {-92, 142}}));
  connect(T13.OUT, pSplit.IN) annotation(
    Line(points = {{-92, 138}, {-92, 138}, {-92, 130}, {-92, 130}, {-92, 130}, {-92, 130}}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{-40, 80}, {-34, 80}}, color = {255, 0, 255}));
  connect(S4.OUT, pJoin.IN2) annotation(
    Line(points = {{-52, 46}, {-52, 2}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-132, 78}, {-132, 66}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-132, 94}, {-132, 94}, {-132, 94}, {-132, 94}, {-132, 82}, {-132, 82}, {-132, 82}, {-132, 82}}));
  connect(T5.C, C5.y) annotation(
    Line(points = {{-80, -12}, {-77, -12}, {-77, -13}, {-69, -13}}, color = {255, 0, 255}));
  connect(T5.OUT, S0.IN) annotation(
    Line(points = {{-92, -14}, {-92.25, -14}, {-92.25, -16}, {-92.5, -16}, {-92.5, -24}, {-158, -24}, {-158, 176}, {-92, 176}, {-92, 170}}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{-52, 94}, {-52, 94}, {-52, 94}, {-52, 94}, {-52, 82}, {-52, 82}, {-52, 82}, {-52, 82}}));
  connect(pJoin.OUT, T5.IN) annotation(
    Line(points = {{-92.6, -1.6}, {-92.6, -9.6}}));
  connect(S2.OUT, pJoin.IN1) annotation(
    Line(points = {{-132, 46}, {-132, 2}}));
  connect(pSplit.OUT1, S1.IN) annotation(
    Line(points = {{-132, 126}, {-132, 114}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{-120, 80}, {-117, 80}, {-117, 77}, {-110, 77}}, color = {255, 0, 255}));
  connect(T13.C, C13.y) annotation(
    Line(points = {{-80, 140}, {-73, 140}}, color = {255, 0, 255}));
  connect(T4.OUT, S4.IN) annotation(
    Line(points = {{-52, 78}, {-52, 66}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end E002_branching;