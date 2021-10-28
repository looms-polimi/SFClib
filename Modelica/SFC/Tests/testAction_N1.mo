within SFC.Tests;
model testAction_N1 "Action with N qualifier - connected to an Initial Step"
  BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-10, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C1(y = S0.t > 2)  annotation(
    Placement(visible = true, transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BasicBlocks.Condition C2(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {30, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action_NP_000 action_NP_000 annotation(
    Placement(visible = true, transformation(origin = {46, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action_NP action_NP annotation(
    Placement(visible = true, transformation(origin = {46, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T2.C, C2.y) annotation(
    Line(points = {{2, -20}, {20, -20}, {20, -20}, {18, -20}}, color = {255, 0, 255}));
  connect(S0.OUT, T1.IN) annotation(
    Line(points = {{-10, 60}, {-10, 60}, {-10, 42}, {-10, 42}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-10, 0}, {-10, 0}, {-10, -18}, {-10, -18}}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-10, 38}, {-10, 38}, {-10, 20}, {-10, 20}}));
  connect(T2.OUT, S0.IN) annotation(
    Line(points = {{-10, -22}, {-10, -32}, {-34, -32}, {-34, 86}, {-10, 86}, {-10, 80}}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{2, 40}, {20, 40}, {20, 40}, {18, 40}}, color = {255, 0, 255}));
  connect(S0.X, action_NP_000.IN) annotation(
    Line(points = {{4, 70}, {32, 70}}));
  connect(S1.X, action_NP.IN) annotation(
    Line(points = {{4, 10}, {32, 10}}));  protected
  annotation(
    Documentation(info = "<html><head></head><body><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S0</u>. When S0 becomes active, action A is set and remains set until S0 is deactivated. Being&nbsp;S0&nbsp;the initial Step, both A and S0 are active from the beginning of the simulation.</div><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><div><br></div></span><div><br></div>
    
    <img width=\"400\" src=\"modelica://SFC/Images/Test/N1.png\">
    
    </body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
end testAction_N1;