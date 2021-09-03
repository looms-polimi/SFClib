within SFC.Branching;

model AlternativeSplit2 "Alternative Split with two branches"
  SFC.Interfaces.StepOutput IN annotation(
    Placement(visible = true, transformation(origin = {4, 32}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.StepOutput OUT1 annotation(
    Placement(visible = true, transformation(origin = {-80, -62}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-400, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.StepOutput OUT2 annotation(
    Placement(visible = true, transformation(origin = {-70, -52}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {400, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  OUT1.active = IN.active;
  OUT2.active = IN.active;
  IN.fire = OUT1.fire or OUT2.fire;
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(origin = {0, 1}, fillColor = {35, 4, 4}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}})}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><div><b>AlternativeSplit2</b>, divide the SFC into two alternative sequences. The block has one <i>StepOutput</i> input to be preceded by a step and two&nbsp;<i>StepOutput</i>&nbsp;output to be followed by two transitions.&nbsp;</div><div><br></div><div>When the preceeding step is active and one of the two transitions is triggered, the SFC proceeds to one sequence only.</div></body></html>"));
end AlternativeSplit2;
