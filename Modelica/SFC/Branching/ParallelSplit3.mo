within SFC.Branching;

model ParallelSplit3 "Parallel Split with three branches"
  SFC.Interfaces.TransitionOutput IN annotation(
    Placement(visible = true, transformation(origin = {0, 24}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {7.77156e-16, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput OUT1 annotation(
    Placement(visible = true, transformation(origin = {-80, -16}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-400, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput OUT2 annotation(
    Placement(visible = true, transformation(origin = {0, -18}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, -1.42109e-14}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput OUT3 annotation(
    Placement(visible = true, transformation(origin = {80, -18}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {400, 1.33227e-14}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  OUT1.fire = IN.fire;
  OUT2.fire = IN.fire;
  OUT3.fire = IN.fire;
annotation(
    Icon(graphics = {Rectangle(origin = {0, 21}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}}), Rectangle(origin = {0, 1}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}})}),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div><b>ParallelSplit3</b> divide the SFC into three parallel sequences. The block has one <i>TransitionOutput </i>input to be preceded by a transition and three&nbsp;<i>TransitionOutput</i> output to be followed by three steps.&nbsp;</div><div><br></div><div>When the transition is triggered, all the three steps becomes active and the SFC proceeds through the three sequences.</div><div><br></div></body></html>"));end ParallelSplit3;
