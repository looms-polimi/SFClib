within SFC.Tests;

model testMergeActions_NN "NOnStored Actions merged"
  SFC.BasicBlocks.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-10, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-10, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-10, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-10, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T3 annotation(
    Placement(visible = true, transformation(origin = {-10, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T4 annotation(
    Placement(visible = true, transformation(origin = {-10, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C1(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {20, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {20, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C3(y = S2.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {20, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C4(y = S3.t > 1.5) annotation(
    Placement(visible = true, transformation(origin = {20, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action A2(qualifierType = SFC.Types.Qualifier.N) annotation(
    Placement(visible = true, transformation(origin = {20, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.mergeActions A(n = 3) annotation(
    Placement(visible = true, transformation(origin = {58, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action A0(initialStepAction = true, qualifierType = SFC.Types.Qualifier.N) annotation(
    Placement(visible = true, transformation(origin = {20, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action action(qualifierType = SFC.Types.Qualifier.N) annotation(
    Placement(visible = true, transformation(origin = {24, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S2.X, A2.phase_active) annotation(
    Line(points = {{2, -12}, {10, -12}, {10, -12}, {10, -12}}, color = {255, 0, 255}));
  connect(A2.actionOUT, A.mergeIN[2]) annotation(
    Line(points = {{30, -12}, {40, -12}, {40, 32}, {48, 32}, {48, 32}}));
  connect(A0.actionOUT, A.mergeIN[1]) annotation(
    Line(points = {{30, 76}, {40, 76}, {40, 32}, {48, 32}, {48, 32}}));
  connect(S0.X, A0.phase_active) annotation(
    Line(points = {{2, 76}, {10, 76}, {10, 76}, {10, 76}}, color = {255, 0, 255}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{2, 54}, {9, 54}}, color = {255, 0, 255}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{2, 10}, {9, 10}}, color = {255, 0, 255}));
  connect(T3.C, C3.y) annotation(
    Line(points = {{2, -34}, {9, -34}}, color = {255, 0, 255}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{2, -78}, {9, -78}}, color = {255, 0, 255}));
  connect(T4.OUT, S0.IN) annotation(
    Line(points = {{-10, -80}, {-10, -88}, {-34, -88}, {-34, 94}, {-10, 94}, {-10, 86}}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{-10, -66}, {-10, -76}}));
  connect(S2.OUT, T3.IN) annotation(
    Line(points = {{-10, -22}, {-10, -32}}));
  connect(T3.OUT, S3.IN) annotation(
    Line(points = {{-10, -36}, {-10, -46}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-10, 22}, {-10, 12}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-10, 8}, {-10, -2}}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-10, 66}, {-10, 56}}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-10, 52}, {-10, 42}}));
  connect(S1.X, action.phase_active) annotation(
    Line(points = {{2, 32}, {12, 32}, {12, 32}, {12, 32}}, color = {255, 0, 255}));
  connect(action.actionOUT, A.mergeIN[3]) annotation(
    Line(points = {{36, 30}, {50, 30}, {50, 32}, {50, 32}}));
  annotation(
    Documentation(info = "<html><head></head><body><div><div><div>In this test, the action A0 is associated with the Step S0 and the action A2 with the Step S2. A0 and A2 have a NonStored qualifier.&nbsp;</div><div>The output of the mergeActions is a third signal A that has a true value when action A0 or A2 are performed and that keeps that value until the associated step is deactivated. &nbsp;</div><div>As can be seen in Figure below, A is set when S0 is activated and reset when S2 is deactivated.</div><div><br></div></div></div>&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/NN.png\">
    
    <div><br></div><div><div>Being the action N connected to the initial step, A.y must be initialised to true. The number of input n of the mergeAction must be equal to the number of blocks to merge.</div></div><div><br></div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end testMergeActions_NN;
