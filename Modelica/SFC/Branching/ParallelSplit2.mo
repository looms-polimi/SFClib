within SFC.Branching;

model ParallelSplit2 "Parallel Split with two branches"
  SFC.Interfaces.TransitionOutput IN annotation(
    Placement(visible = true, transformation(origin = {4, 32}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput OUT1 annotation(
    Placement(visible = true, transformation(origin = {-80, -62}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-400, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput OUT2 annotation(
    Placement(visible = true, transformation(origin = {-70, -52}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {400, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  OUT1.fire = IN.fire;
  OUT2.fire = IN.fire;
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(origin = {0, 1}, fillColor = {35, 4, 4}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}}), Rectangle(origin = {0, 21}, fillColor = {35, 4, 4}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}})}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><div><b>ParallelSplit2</b>, divide the SFC into two parallel sequences. The block has one <i>TransitionOutput</i> input to be preceded by a transition and two <i>TransitionOutput</i> output to be followed by two steps.</div><div>&nbsp;</div><div>When the transition is triggered, both the steps becomes active and the SFC proceeds through both the sequences.</div><div><br></div><div><br></div></body></html>"));
end ParallelSplit2;
