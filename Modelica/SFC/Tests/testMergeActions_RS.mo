within SFC.Tests;

model testMergeActions_RS "Set-Reset Actions merged - reset at the Initial Step"
  BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T3 annotation(
    Placement(visible = true, transformation(origin = {-10, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Action_SR A0 annotation(
    Placement(visible = true, transformation(origin = {109, 63}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-10, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C3(y = S2.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {25, -34}, extent = {{-15, -10}, {15, 10}}, rotation = 0)));
  BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-10, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C4(y = S3.t > 1.5) annotation(
    Placement(visible = true, transformation(origin = {26, -77}, extent = {{-16, -9}, {16, 9}}, rotation = 0)));
  BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-10, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C1(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {25, 54}, extent = {{-15, -10}, {15, 10}}, rotation = 0)));
  BasicBlocks.Transition T4 annotation(
    Placement(visible = true, transformation(origin = {-10, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C2(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {26, 11}, extent = {{-16, -9}, {16, 9}}, rotation = 0)));
  BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-10, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T3.C, C3.y) annotation(
    Line(points = {{2, -34}, {8, -34}}, color = {255, 0, 255}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{2, 54}, {8, 54}}, color = {255, 0, 255}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{-10, -66}, {-10, -76}}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-10, 52}, {-10, 42}}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-10, 66}, {-10, 56}}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{2, -78}, {5.5, -78}, {5.5, -77}, {8, -77}}, color = {255, 0, 255}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-10, 22}, {-10, 12}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{2, 10}, {5, 10}, {5, 11}, {8, 11}}, color = {255, 0, 255}));
  connect(T3.OUT, S3.IN) annotation(
    Line(points = {{-10, -36}, {-10, -46}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-10, 8}, {-10, -2}}));
  connect(S2.OUT, T3.IN) annotation(
    Line(points = {{-10, -22}, {-10, -32}}));
  connect(T4.OUT, S0.IN) annotation(
    Line(points = {{-10, -80}, {-10, -88}, {-34, -88}, {-34, 94}, {-10, 94}, {-10, 86}}));
  connect(S2.X, A0.IN_S[1]) annotation(
    Line(points = {{4, -12}, {58, -12}, {58, 72}, {90, 72}, {90, 68}}));
  connect(A0.IN_R[1], S0.X) annotation(
    Line(points = {{90, 58}, {62, 58}, {62, 76}, {4, 76}}));
  annotation(
    Documentation(info = "<html><head></head><body><div>In this test, the action A0 is associated with the Step S0 and the action A2 with the Step S2. A0 has a reset qualifier, A2 a set one.&nbsp;</div><div>The output of the mergeActions is a third signal&nbsp;<b>A</b>&nbsp;that is active as shown in the figure below: set when&nbsp;<u>S2</u>&nbsp;is activated and reset when&nbsp;<u>S0</u>&nbsp;is activated. &nbsp;</div><div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/RS.png\"></div><div><br></div><div><br></div><div>The number of input n of the mergeAction must be equal to the number of blocks to merge.</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end testMergeActions_RS;