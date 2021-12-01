within SFC.Tests.TestActionWithCyclicGroup;


model testActionSI_SR "Set/Reset Action with a single set signal and reset signal"
extends SFC.BasicBlocks.ModelWithCyclicGroup;
  SFC.BasicBlocks.Condition condition2(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-254, 16}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition transition annotation(
    Placement(visible = true, transformation(origin = {-305, -45}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-305, 47}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Transition transition1 annotation(
    Placement(visible = true, transformation(origin = {-305, 15}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-305, -13}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition3(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-244, -44}, extent = {{-26, -10}, {26, 10}}, rotation = 0)));
  SFC.BasicBlocks.ActionSI_SR actionSR_SI annotation(
    Placement(visible = true, transformation(origin = {-210, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S11 annotation(
    Placement(visible = true, transformation(origin = {59, 51}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Transition T00_01 annotation(
    Placement(visible = true, transformation(origin = {-129, 77}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition(y = S12.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {104, -47}, extent = {{-16, -11}, {16, 11}}, rotation = 0)));
  SFC.BasicBlocks.Step S03 annotation(
    Placement(visible = true, transformation(origin = {-129, -73}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition c00(y = S00.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-80, 78}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S01 annotation(
    Placement(visible = true, transformation(origin = {-129, 45}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition4(y = S13.t > 1) annotation(
    Placement(visible = true, transformation(origin = {103, -104}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T12_13 annotation(
    Placement(visible = true, transformation(origin = {59, -45}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S00(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-129, 111}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = S11.t > 1) annotation(
    Placement(visible = true, transformation(origin = {108, 19}, extent = {{-14, -11}, {14, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition C1(y = S10.t > 2) annotation(
    Placement(visible = true, transformation(origin = {106, 82}, extent = {{-16, -10}, {16, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T02_03 annotation(
    Placement(visible = true, transformation(origin = {-129, -47}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Transition T13_10 annotation(
    Placement(visible = true, transformation(origin = {59, -103}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Transition T11_10 annotation(
    Placement(visible = true, transformation(origin = {59, 19}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S13 annotation(
    Placement(visible = true, transformation(origin = {59, -71}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition c01(y = S01.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-79, 14}, extent = {{-19, -10}, {19, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T03_00 annotation(
    Placement(visible = true, transformation(origin = {-129, -105}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Transition T10_11 annotation(
    Placement(visible = true, transformation(origin = {59, 79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S10(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {59, 111}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Condition c02(y = S02.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-84, -48}, extent = {{-16, -10}, {16, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T01_02 annotation(
    Placement(visible = true, transformation(origin = {-129, 15}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.BasicBlocks.Condition c03(y = S03.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-85, -106}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S02 annotation(
    Placement(visible = true, transformation(origin = {-129, -19}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.Step S12 annotation(
    Placement(visible = true, transformation(origin = {59, -17}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFC.BasicBlocks.ActionSI_SR SR_0 annotation(
    Placement(visible = true, transformation(origin = {-34, 108}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.ActionSI_SR SR_1 annotation(
    Placement(visible = true, transformation(origin = {188, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.ActionSI_SR actionSI_SR annotation(
    Placement(visible = true, transformation(origin = {-210, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(transition1.OUT, S1.IN) annotation(
    Line(points = {{-305, 12.4}, {-305, -1.6}}));
  connect(transition1.C, condition2.y) annotation(
    Line(points = {{-289.4, 15}, {-280.4, 15}, {-280.4, 16}, {-276, 16}}, color = {255, 0, 255}));
  connect(S1.OUT, transition.IN) annotation(
    Line(points = {{-305, -24}, {-305, -42}}));
  connect(S0.X, actionSR_SI.IN_R) annotation(
    Line(points = {{-289.6, 47}, {-254.6, 47}, {-254.6, 48}, {-223.6, 48}}));
  connect(S0.OUT, transition1.IN) annotation(
    Line(points = {{-305, 36}, {-305, 18}}));
  connect(transition.C, condition3.y) annotation(
    Line(points = {{-289.4, -45}, {-280.7, -45}, {-280.7, -44}, {-273, -44}}, color = {255, 0, 255}));
  connect(transition.OUT, S0.IN) annotation(
    Line(points = {{-305, -47.6}, {-305, -55.6}, {-338, -55.6}, {-338, 64.4}, {-305, 64.4}, {-305, 58.4}}));
  connect(S0.X, actionSR_SI.IN_S) annotation(
    Line(points = {{-289.6, 47}, {-263.6, 47}, {-263.6, 55}, {-223.6, 55}}));
  connect(T13_10.C, condition4.y) annotation(
    Line(points = {{74.6, -103}, {88.6, -103}, {88.6, -105}}, color = {255, 0, 255}));
  connect(T12_13.C, condition.y) annotation(
    Line(points = {{74.6, -45}, {86, -45}, {86, -47}}, color = {255, 0, 255}));
  connect(T00_01.C, c00.y) annotation(
    Line(points = {{-113.4, 77}, {-110.4, 77}, {-110.4, 78}, {-102, 78}}, color = {255, 0, 255}));
  connect(S11.OUT, T11_10.IN) annotation(
    Line(points = {{59, 40}, {59, 22}}));
  connect(T10_11.OUT, S11.IN) annotation(
    Line(points = {{59, 76.4}, {59, 62.4}}));
  connect(T11_10.C, C2.y) annotation(
    Line(points = {{74.6, 19}, {93, 19}}, color = {255, 0, 255}));
  connect(T02_03.C, c02.y) annotation(
    Line(points = {{-113.4, -47}, {-102, -47}, {-102, -48}}, color = {255, 0, 255}));
  connect(T12_13.OUT, S13.IN) annotation(
    Line(points = {{59, -47.6}, {59, -59.6}}));
  connect(S10.OUT, T10_11.IN) annotation(
    Line(points = {{59, 100}, {59, 82}}));
  connect(S12.OUT, T12_13.IN) annotation(
    Line(points = {{59, -28}, {59, -42}}));
  connect(S02.OUT, T02_03.IN) annotation(
    Line(points = {{-129, -30}, {-129, -44}}));
  connect(S01.OUT, T01_02.IN) annotation(
    Line(points = {{-129, 34}, {-129, 18}}));
  connect(T01_02.C, c01.y) annotation(
    Line(points = {{-113.4, 15}, {-107.9, 15}, {-107.9, 14}, {-100, 14}}, color = {255, 0, 255}));
  connect(T00_01.OUT, S01.IN) annotation(
    Line(points = {{-129, 74.4}, {-129, 56.4}}));
  connect(S00.OUT, T00_01.IN) annotation(
    Line(points = {{-129, 100}, {-129, 80}}));
  connect(S03.OUT, T03_00.IN) annotation(
    Line(points = {{-129, -84}, {-129, -102}}));
  connect(S13.OUT, T13_10.IN) annotation(
    Line(points = {{59, -82}, {59, -100}}));
  connect(T13_10.OUT, S10.IN) annotation(
    Line(points = {{59, -105.6}, {59, -129.6}, {17, -129.6}, {17, 136.4}, {59, 136.4}, {59, 122.4}}));
  connect(T02_03.OUT, S03.IN) annotation(
    Line(points = {{-129, -49.6}, {-129, -61.6}}));
  connect(T03_00.OUT, S00.IN) annotation(
    Line(points = {{-129, -107.6}, {-137, -107.6}, {-137, -129.6}, {-175, -129.6}, {-175, 140.4}, {-129, 140.4}, {-129, 122.4}}));
  connect(T01_02.OUT, S02.IN) annotation(
    Line(points = {{-129, 12.4}, {-129, -7.6}}));
  connect(T03_00.C, c03.y) annotation(
    Line(points = {{-113.4, -105}, {-99.4, -105}, {-99.4, -107}}, color = {255, 0, 255}));
  connect(T11_10.OUT, S12.IN) annotation(
    Line(points = {{59, 16.4}, {59, -5.6}}));
  connect(T10_11.C, C1.y) annotation(
    Line(points = {{74.6, 79}, {83.6, 79}, {83.6, 82}, {88, 82}}, color = {255, 0, 255}));
  connect(S00.X, SR_0.IN_S) annotation(
    Line(points = {{-114, 112}, {-48, 112}}));
  connect(S02.X, SR_0.IN_R) annotation(
    Line(points = {{-114, -18}, {-54, -18}, {-54, 104}, {-48, 104}}));
  connect(S12.X, SR_1.IN_S) annotation(
    Line(points = {{74, -16}, {174, -16}}));
  connect(SR_1.IN_R, S10.X) annotation(
    Line(points = {{174, -24}, {144, -24}, {144, 112}, {74, 112}}));
  connect(S1.X, actionSI_SR.IN_S) annotation(
    Line(points = {{-290, -12}, {-250, -12}, {-250, -8}, {-224, -8}}));
  connect(actionSI_SR.IN_R, S1.X) annotation(
    Line(points = {{-224, -16}, {-264, -16}, {-264, -12}, {-290, -12}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div><div><div><b>MEMO: set/reset actions, da sinistra a destra:</b></div><div><b>-S/R connessi a stesso step (NON HA SENSO! esempio per sconsigliare questa configurazione che si comporta come un N solo all'inizio della simulazione, se lo facciamo allo step dopo infatti il set non si attiva mai);</b></div><div><b>-S connesso a step iniziale / R connesso in un altro step (Funziona)</b></div><div><b>-S connesso ad uno step casuale, R connesso ad initial step (Funziona)&nbsp;</b></div><div><br></div><div><br></div><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S0</u>. When S0 becomes active, action A is set and remains set until the end of the simulation. Being&nbsp;S0&nbsp;the initial Step, both A and S0 are active from the beginning of the simulation.</div><div><div><br></div><img width=\"400\" src=\"modelica://SFC/Images/Test/S1.png\"></div></div><div><br></div><div><br></div><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S1</u>. When S1 becomes active, action A is set and remains set until the end of the simulation.&nbsp;</div><div></div></div><div><br></div><div><br></div><div>&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/S2.png\"></div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-300, -200}, {300, 200}})),
  Icon(coordinateSystem(extent = {{-300, -200}, {300, 200}})));
end testActionSI_SR;