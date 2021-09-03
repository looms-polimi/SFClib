within SFC.Tests;

model testAction_P2 "Action with P qualifier - connected to a generic Step"
  SFC.BasicBlocks.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-10, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C1(y = S0.t > 2) annotation(
    Placement(visible = true, transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = S1.t > 1) annotation(
    Placement(visible = true, transformation(origin = {30, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action A(qualifierType = SFC.Types.Qualifier.P) annotation(
    Placement(visible = true, transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.CounterAction count annotation(
    Placement(visible = true, transformation(origin = {70, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(A.actionBoolean, count.increment) annotation(
    Line(points = {{40, 12}, {58, 12}, {58, 12}, {58, 12}}, color = {255, 0, 255}));
  connect(S1.X, A.phase_active) annotation(
    Line(points = {{2, 10}, {20, 10}, {20, 10}, {20, 10}}, color = {255, 0, 255}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{2, -20}, {18, -20}, {18, -20}, {18, -20}}, color = {255, 0, 255}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{2, 40}, {20, 40}, {20, 40}, {18, 40}}, color = {255, 0, 255}));
  connect(T2.OUT, S0.IN) annotation(
    Line(points = {{-10, -22}, {-10, -22}, {-10, -32}, {-32, -32}, {-32, 86}, {-10, 86}, {-10, 80}, {-10, 80}}));
  connect(T1.IN, S0.OUT) annotation(
    Line(points = {{-10, 42}, {-10, 42}, {-10, 60}, {-10, 60}}));
  connect(S1.IN, T1.OUT) annotation(
    Line(points = {{-10, 20}, {-10, 20}, {-10, 38}, {-10, 38}}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-10, 0}, {-10, 0}, {-10, -18}, {-10, -18}}));
annotation( 
Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S1</u>. Every time S1 becomes active, action A is set and reset instantaneously.&nbsp;</div><div><br></div><div>Being this transition instantaneous, the action variation will not be printed in the output signal&nbsp;<b>A</b>. To detect a pulse, a&nbsp;<i>Counter&nbsp;</i>block is added, it increases its value every time a pulse is detected. Note that if the action is connected to the initial step the counter is initialised to 1, otherwise to 0.</div><div><br></div><span class=\"Apple-style-span\" style=\"font-size: 12px;\"><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><div><br></div></span></span><div><br></div><div><br></div><div><br></div>
    
    <img width=\"400\" src=\"modelica://SFC/Images/Test/P2.png\">
    
    </body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
    end testAction_P2;
