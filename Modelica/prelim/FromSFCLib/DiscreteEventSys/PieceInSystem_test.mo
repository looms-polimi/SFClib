within FromSFCLib.DiscreteEventSys;

model PieceInSystem_test
  SFC.BasicBlocks.InitialStep initialStep annotation(
    Placement(visible = true, transformation(origin = {-24, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition transition annotation(
    Placement(visible = true, transformation(origin = {-24, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition(y = PieceIn.y) annotation(
    Placement(visible = true, transformation(origin = {22, 38}, extent = {{-18, -12}, {18, 12}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse PieceIn(period = 50, startTime = 10, width = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-76, 78}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.BasicBlocks.Step step annotation(
    Placement(visible = true, transformation(origin = {-24, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition transition1 annotation(
    Placement(visible = true, transformation(origin = {-24, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C_IE(y = step.t > 10) annotation(
    Placement(visible = true, transformation(origin = {22, -18}, extent = {{-18, -6}, {18, 6}}, rotation = 0)));
equation
  connect(initialStep.OUT, transition.IN) annotation(
    Line(points = {{-24, 58}, {-24, 40}}));
  connect(transition.C, condition.y) annotation(
    Line(points = {{-12, 38}, {2, 38}}, color = {255, 0, 255}));
  connect(transition.OUT, step.IN) annotation(
    Line(points = {{-24, 36}, {-24, 36}, {-24, 22}, {-24, 22}}));
  connect(step.OUT, transition1.IN) annotation(
    Line(points = {{-24, 2}, {-24, 2}, {-24, -14}, {-24, -14}}));
  connect(transition1.OUT, initialStep.IN) annotation(
    Line(points = {{-24, -18}, {-24, -18}, {-24, -36}, {-54, -36}, {-54, 90}, {-24, 90}, {-24, 78}, {-24, 78}}));
  connect(transition1.C, C_IE.y) annotation(
    Line(points = {{-12, -16}, {-2, -16}, {-2, -18}, {2, -18}}, color = {255, 0, 255}));
end PieceInSystem_test;