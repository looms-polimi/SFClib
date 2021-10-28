within SFC.Tests;

model testMergeActions_NN "NOnStored Actions merged"
  BasicBlocks.Condition C1(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-10, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Action_NP_000 action_NP_000 annotation(
    Placement(visible = true, transformation(origin = {46, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Action_NP action_NP annotation(
    Placement(visible = true, transformation(origin = {46, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C2(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {30, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Or or1 annotation(
    Placement(visible = true, transformation(origin = {104, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.X, action_NP_000.IN) annotation(
    Line(points = {{4, 70}, {32, 70}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-10, 0}, {-10, 0}, {-10, -18}, {-10, -18}}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-10, 60}, {-10, 60}, {-10, 42}, {-10, 42}}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{2, 40}, {20, 40}, {20, 40}, {18, 40}}, color = {255, 0, 255}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-10, 38}, {-10, 38}, {-10, 20}, {-10, 20}}));
  connect(S1.X, action_NP.IN) annotation(
    Line(points = {{4, 10}, {32, 10}}));
  connect(T2.OUT, S0.IN) annotation(
    Line(points = {{-10, -22}, {-10, -32}, {-34, -32}, {-34, 86}, {-10, 86}, {-10, 80}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{2, -20}, {20, -20}, {20, -20}, {18, -20}}, color = {255, 0, 255}));
  connect(action_NP_000.out, or1.u1) annotation(
    Line(points = {{60, 70}, {72, 70}, {72, 44}, {92, 44}}, color = {255, 0, 255}));
  connect(action_NP.out, or1.u2) annotation(
    Line(points = {{60, 10}, {80, 10}, {80, 34}, {92, 34}, {92, 36}}, color = {255, 0, 255}));
  annotation(
    Documentation(info = "<html><head></head><body><div><div><div>In this test, the action A0 is associated with the Step S0 and the action A2 with the Step S2. A0 and A2 have a NonStored qualifier.&nbsp;</div><div>The output of the mergeActions is a third signal A that has a true value when action A0 or A2 are performed and that keeps that value until the associated step is deactivated. &nbsp;</div><div>As can be seen in Figure below, A is set when S0 is activated and reset when S2 is deactivated.</div><div><br></div></div></div>&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/NN.png\">
    
    <div><br></div><div><div>Being the action N connected to the initial step, A.y must be initialised to true. The number of input n of the mergeAction must be equal to the number of blocks to merge.</div></div><div><br></div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end testMergeActions_NN;