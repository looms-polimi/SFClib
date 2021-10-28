within SFC.Tests;

model testAction_R2 "action with R qualifier - connected to a generic Step"
  SFC.BasicBlocks.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-10, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action A(initialStepAction = false, qualifierType = SFC.Types.Qualifier.R) annotation(
    Placement(visible = true, transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C1(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {30, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T2.OUT, S0.IN) annotation(
    Line(points = {{-10, -22}, {-10, -34}, {-36, -34}, {-36, 86}, {-10, 86}, {-10, 80}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{2, -20}, {20, -20}, {20, -20}, {18, -20}}, color = {255, 0, 255}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{2, 40}, {18, 40}, {18, 40}, {18, 40}}, color = {255, 0, 255}));
  connect(S1.X, A.phase_active) annotation(
    Line(points = {{2, 10}, {20, 10}, {20, 10}, {20, 10}}, color = {255, 0, 255}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-10, 0}, {-10, 0}, {-10, -18}, {-10, -18}}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-10, 38}, {-10, 38}, {-10, 20}, {-10, 20}}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-10, 60}, {-10, 60}, {-10, 42}, {-10, 42}}));
  annotation(
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S1</u>. When S1 becomes active, action A is reset and remains reset until the end of the simulation. Obviously the reset operation is not visible without performing previously a set operation, then signal A remains always to zero (see testMergeActions_SR2 to see the SR evolution af an action).&nbsp;</div><div><br></div><div><br></div>
    
    <img width=\"400\" src=\"modelica://SFC/Images/Test/R1.png\">
    
    </body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end testAction_R2;
