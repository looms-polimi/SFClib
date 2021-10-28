within SFC.Tests;

model testAction_S1 "Action with S qualifier - connected to an Initial Step"
  BasicBlocks.Condition C1(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-10, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C2(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {30, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action_SR A_SR(m = 0)  annotation(
    Placement(visible = true, transformation(origin = {52, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-10, 0}, {-10, 0}, {-10, -18}, {-10, -18}}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-10, 60}, {-10, 60}, {-10, 42}, {-10, 42}}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{2, 40}, {20, 40}, {20, 40}, {18, 40}}, color = {255, 0, 255}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-10, 38}, {-10, 38}, {-10, 20}, {-10, 20}}));
  connect(T2.OUT, S0.IN) annotation(
    Line(points = {{-10, -22}, {-10, -32}, {-34, -32}, {-34, 86}, {-10, 86}, {-10, 80}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{2, -20}, {20, -20}, {20, -20}, {18, -20}}, color = {255, 0, 255}));
  connect(S0.X, A_SR.IN_S[1]) annotation(
    Line(points = {{4, 70}, {20, 70}, {20, 72}, {38, 72}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S0</u>. When S0 becomes active, action A is set and remains set until the end of the simulation. Being&nbsp;S0&nbsp;the initial Step, both A and S0 are active from the beginning of the simulation.</div><div><div><br></div>
    
<img width=\"400\" src=\"modelica://SFC/Images/Test/S1.png\"><br>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end testAction_S1;