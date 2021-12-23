within SFC.Tests.TestWithCyclicGroup.TestWithSubBranch_CG;

model test_withSubBranch
 SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-8, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.SFCelements.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-8, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C01(y = S0.t > 1.2) annotation(
    Placement(visible = true, transformation(origin = {70, 22}, extent = {{28, -10}, {-28, 10}}, rotation = 0)));
 SFC.Tests.TestWithCyclicGroup.TestWithSubBrach_CG.SubBranch_00 subBranch_00(period = 0.5)   annotation(
    Placement(visible = true, transformation(origin = {-8, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C10(y = true) annotation(
    Placement(visible = true, transformation(origin = {52, -58}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 SFC.SFCelements.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-6, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 inner SFC.SFCelements.CyclicGroup cyclicGroup annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
 connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-8, 52}, {-8, 24}}));
 connect(T01.C, C01.y) annotation(
    Line(points = {{-8, 22}, {28, 22}}, color = {255, 0, 255}));
 connect(T01.OUT, subBranch_00.IN) annotation(
    Line(points = {{-8, 22}, {-8, -10}}));
 connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-6, -60}, {-6, -84}, {-54, -84}, {-54, 88}, {-8, 88}, {-8, 72}}));
 connect(subBranch_00.OUT, T10.IN) annotation(
    Line(points = {{-8, -30}, {-8, -43}, {-6, -43}, {-6, -56}}));
 connect(T10.C, C10.y) annotation(
    Line(points = {{6, -58}, {42, -58}}, color = {255, 0, 255}));
end test_withSubBranch;
