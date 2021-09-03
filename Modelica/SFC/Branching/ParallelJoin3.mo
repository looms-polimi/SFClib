within SFC.Branching;

model ParallelJoin3 "Parallel Join with three branches"
  SFC.Interfaces.TransitionInput OUT annotation(
    Placement(visible = true, transformation(origin = {0, 4}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {4.44089e-16, -38}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionInput IN1 annotation(
    Placement(visible = true, transformation(origin = {10, 14}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-400, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionInput IN2 annotation(
    Placement(visible = true, transformation(origin = {20, 24}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionInput IN3 annotation(
    Placement(visible = true, transformation(origin = {30, 34}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {400, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  OUT.active = IN1.active and IN2.active and IN3.active;
  IN1.fire = OUT.fire;
  IN2.fire = OUT.fire;
  IN3.fire = OUT.fire;
annotation(
    Icon(graphics = {Rectangle(origin = {0, -19}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}}), Rectangle(origin = {0, 1}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}})}),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div><b>ParallelJoin3</b>, join three parallel sequences of an SFC. The block has three&nbsp;<i>TransitionInput</i>&nbsp;input to be preceded three steps and one&nbsp;<i>TransitionInput</i>&nbsp;output to be followed by a transition.</div><div><div>&nbsp;</div><div>When all the three steps are active, the transition can be triggered - depending on the associated condition - and the SFC proceeds through the same sequence.</div></div></body></html>"));end ParallelJoin3;
