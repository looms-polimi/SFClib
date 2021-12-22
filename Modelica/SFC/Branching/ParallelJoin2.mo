within SFC.Branching;

model ParallelJoin2 "Parallel Join with two branches"
  SFC.Interfaces.TransitionInput IN1 annotation(
    Placement(visible = true, transformation(origin = {-120, 68}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-400, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionInput IN2 annotation(
    Placement(visible = true, transformation(origin = {100, 68}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {400, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  /*SFC.Interfaces.TransitionInput OUT annotation(
      Placement(visible = true, transformation(origin = {4, 32}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, -38}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));*/
  SFC.Interfaces.StepOutput OUT annotation(
    Placement(visible = true, transformation(origin = {0, -28}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-6, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  OUT.active = IN1.active and IN2.active;
  IN1.fire = OUT.fire;
  IN2.fire = OUT.fire;
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(origin = {0, 1}, fillColor = {35, 4, 4}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}}), Rectangle(origin = {0, -19}, fillColor = {35, 4, 4}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}})}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><div><b>ParallelJoin2</b>, join two parallel sequences of an SFC. The block has two&nbsp;<i>TransitionInput</i>&nbsp;input to be preceded two steps and one&nbsp;<i>TransitionInput</i>&nbsp;output to be followed by a transition.</div><div><div>&nbsp;</div><div>When the both the steps are active, the transition can be triggered - depending on the associated condition - and the SFC proceeds through the same sequence.</div></div><div><br></div></body></html>"));
end ParallelJoin2;