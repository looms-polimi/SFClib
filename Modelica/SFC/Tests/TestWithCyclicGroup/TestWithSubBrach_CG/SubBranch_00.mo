within SFC.Tests.TestWithCyclicGroup.TestWithSubBrach_CG;

model SubBranch_00
  extends SFC.BasicBlocks.SubBranchWithCyclicGroup;
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {2, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {2, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S0(initialStep = false) annotation(
    Placement(visible = true, transformation(origin = {0, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C01(y = true) annotation(
    Placement(visible = true, transformation(origin = {54, 20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C10(y = S1.t > 0.7) annotation(
    Placement(visible = true, transformation(origin = {62, -36}, extent = {{18, -10}, {-18, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-2, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {0, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.IN, IN) annotation(
    Line(points = {{0, 78}, {0, 100}}));
  connect(S1.IN, T01.OUT) annotation(
    Line(points = {{2, 14}, {2, 24}}));
  connect(T01.IN, S0.OUT) annotation(
    Line(points = {{2, 28}, {0, 28}, {0, 58}}));
  connect(T01.C, C01.y) annotation(
    Line(points = {{14, 26}, {36, 26}, {36, 20}, {44, 20}}, color = {255, 0, 255}));
  connect(C10.y, T10.C) annotation(
    Line(points = {{42.2, -36}, {20.2, -36}, {20.2, -38}, {10.2, -38}}, color = {255, 0, 255}));
  connect(T10.IN, S1.OUT) annotation(
    Line(points = {{-2, -36}, {2, -36}, {2, -6}}));
  connect(T10.OUT, S2.IN) annotation(
    Line(points = {{-2, -40}, {-2, -47}, {0, -47}, {0, -54}}));
  connect(OUT, S2.OUT) annotation(
    Line(points = {{0, -100}, {0, -74}}));
  annotation(
    Diagram);


end SubBranch_00;