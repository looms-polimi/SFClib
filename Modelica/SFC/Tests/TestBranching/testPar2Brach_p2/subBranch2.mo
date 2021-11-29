within SFC.Tests.TestBranching.testPar2Brach_p2;

model subBranch2

extends SFC.BasicBlocks.SubBranch;
  SFC.BasicBlocks.Transition_p2 T4(Tcycle = 0.4) annotation(
    Placement(visible = true, transformation(origin = {0, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S4 annotation(
    Placement(visible = true, transformation(origin = {0, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {0, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C4(y = S3.t > 1) annotation(
    Placement(visible = true, transformation(origin = {30, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T4.OUT, S4.IN) annotation(
    Line(points = {{3.55271e-16, -8}, {3.55271e-16, -20}}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{12, -6}, {15, -6}, {15, -6}, {18, -6}, {18, -6}, {18, -6}, {18, -6}, {18, -6}}, color = {255, 0, 255}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, -4}, {0, -4}, {0, -4}, {0, -4}}));
  connect(IN, S3.IN) annotation(
    Line(points = {{0, 100}, {0, 28}}));
  connect(S4.OUT, OUT) annotation(
    Line(points = {{0, -40}, {0, -100}}));
end subBranch2;