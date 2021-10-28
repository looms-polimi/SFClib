within SFC.Tests;

model testMergeActions_PP "Pulse Actions merged"
  BasicBlocks.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-10, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Action A0(initialStepAction = true, qualifierType = SFC.Types.Qualifier.P) annotation(
    Placement(visible = true, transformation(origin = {24, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-10, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C1(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {20, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.mergeActions A(n = 2) annotation(
    Placement(visible = true, transformation(origin = {60, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.CounterAction countA(count(start = 1)) annotation(
    Placement(visible = true, transformation(origin = {90, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C2(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {20, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-10, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Action A2(qualifierType = SFC.Types.Qualifier.P) annotation(
    Placement(visible = true, transformation(origin = {20, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T3 annotation(
    Placement(visible = true, transformation(origin = {-10, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C3(y = S2.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {20, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-10, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T4 annotation(
    Placement(visible = true, transformation(origin = {-10, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C4(y = S3.t > 1.5) annotation(
    Placement(visible = true, transformation(origin = {20, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S0.X, A0.phase_active) annotation(
    Line(points = {{2, 76}, {12, 76}, {12, 76}, {12, 76}}, color = {255, 0, 255}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-10, 66}, {-10, 56}}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{2, 54}, {9, 54}}, color = {255, 0, 255}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-10, 52}, {-10, 42}}));
  connect(A0.actionOUT, A.mergeIN[1]) annotation(
    Line(points = {{36, 74}, {46, 74}, {46, 32}, {52, 32}, {52, 32}}));
  connect(A.y, countA.increment) annotation(
    Line(points = {{70, 32}, {80, 32}, {80, 32}, {80, 32}}, color = {255, 0, 255}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-10, 22}, {-10, 12}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{2, 10}, {9, 10}}, color = {255, 0, 255}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-10, 8}, {-10, -2}}));
  connect(S2.X, A2.phase_active) annotation(
    Line(points = {{2, -12}, {10, -12}, {10, -12}, {10, -12}}, color = {255, 0, 255}));
  connect(A2.actionOUT, A.mergeIN[2]) annotation(
    Line(points = {{30, -12}, {40, -12}, {40, 32}, {50, 32}, {50, 32}}));
  connect(S2.OUT, T3.IN) annotation(
    Line(points = {{-10, -22}, {-10, -32}}));
  connect(T3.C, C3.y) annotation(
    Line(points = {{2, -34}, {9, -34}}, color = {255, 0, 255}));
  connect(T3.OUT, S3.IN) annotation(
    Line(points = {{-10, -36}, {-10, -46}}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{-10, -66}, {-10, -76}}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{2, -78}, {9, -78}}, color = {255, 0, 255}));
  connect(T4.OUT, S0.IN) annotation(
    Line(points = {{-10, -80}, {-10, -88}, {-34, -88}, {-34, 94}, {-10, 94}, {-10, 86}}));
  annotation(
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div><div>In this test, the action A0 is associated with the Step S0 and the action A2 with the Step S2. A0 and A2 have a Pulse qualifier.&nbsp;</div><div>The output of the mergeActions is a third signal A that has an instantaneous true value when action A0 or A2 are performed.</div><div><br></div><div>Being the output instantaneous, the action variation will not be printed in the output signal <b>A</b> of the mergeAction block. To detect a pulse, a <b>Counter</b> block is added, it increases its value every time a pulse is detected. Note that if the action is connected to the initial step the counter is initialised to 1, otherwise to 0.</div><div><br></div><div>Being the action P connected to the initial step, A.y is initialised true. The number of input n of the mergeAction must be equal to the number of blocks to merge.</div></div><div><br></div><div><br></div><div><br></div>
    
    <img width=\"400\" src=\"modelica://SFC/Images/Test/PP.png\">
    
    </body></html>"));
end testMergeActions_PP;