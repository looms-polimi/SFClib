within SFC.Tests.TestBranching.testPar2Brach_p2;

model subBranch1

extends SFC.SFCelements.SubBranch;
  SFC.SFCelements.Transition_p2 T2(Tcycle = 1) annotation(
    Placement(visible = true, transformation(origin = {-2, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-2, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-2, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C2(y = S1.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {33, -6}, extent = {{-15, -10}, {15, 10}}, rotation = 0)));
equation
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-2, -8}, {-2, -20}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-2, 8}, {-2, 8}, {-2, 8}, {-2, 8}, {-2, -4}, {-2, -4}, {-2, -4}, {-2, -4}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{10, -6}, {16.5, -6}}, color = {255, 0, 255}));
  connect(S1.IN, IN) annotation(
    Line(points = {{-2, 28}, {0, 28}, {0, 100}}));
  connect(S2.OUT, OUT) annotation(
    Line(points = {{-2, -40}, {0, -40}, {0, -100}}));
end subBranch1;