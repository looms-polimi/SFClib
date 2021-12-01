within SFC.Tests.TestWithCyclicGroup.TestWithSubBrach_CG;

model test_withSubBranch
 extends SFC.BasicBlocks.ModelWithCyclicGroup;
 BasicBlocks.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-30, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-30, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C01(y = S0.t > 1.2) annotation(
    Placement(visible = true, transformation(origin = {48, 90}, extent = {{28, -10}, {-28, 10}}, rotation = 0)));
 SubBranch_00 subBranch_00(period = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-26, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C10(y = true) annotation(
    Placement(visible = true, transformation(origin = {30, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 BasicBlocks.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-28, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-30, 120}, {-30, 92}}));
  connect(T01.C, C01.y) annotation(
    Line(points = {{-18, 90}, {18, 90}}, color = {255, 0, 255}));
  connect(T01.OUT, subBranch_00.IN) annotation(
    Line(points = {{-30, 88}, {-26, 88}, {-26, 58}}));
  connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-28, 8}, {-28, -16}, {-76, -16}, {-76, 156}, {-30, 156}, {-30, 140}}));
  connect(subBranch_00.OUT, T10.IN) annotation(
    Line(points = {{-26, 38}, {-28, 38}, {-28, 12}}));
 connect(T10.C, C10.y) annotation(
    Line(points = {{-16, 10}, {20, 10}}, color = {255, 0, 255}));
end test_withSubBranch;