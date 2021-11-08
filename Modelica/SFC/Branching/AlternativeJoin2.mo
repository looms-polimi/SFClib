within SFC.Branching;

model AlternativeJoin2 "Alternative Join with two branches"
  SFC.Interfaces.TransitionOutput IN1 annotation(
    Placement(visible = true, transformation(origin = {-80, -62}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-400, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput IN2 annotation(
    Placement(visible = true, transformation(origin = {-70, -52}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {400, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput OUT annotation(
    Placement(visible = true, transformation(origin = {4, 32}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-7.10543e-15, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  OUT.fire = change(IN1.fire) or change(IN2.fire);
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(origin = {0, 1}, fillColor = {35, 4, 4}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}})}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><div><b>AlternativeJoin2</b>&nbsp;join two alternative sequences of an SFC. The block has two&nbsp;<i>TransitionOutput</i>&nbsp;input to be preceded by two transitions and one&nbsp;<i>TransitionOutput</i>&nbsp;output to be followed by a step.&nbsp;</div><div><div><br></div><div>When one of the two transitions is triggered, the two different SFC sequences proceed to a common one activating the common step.</div></div></body></html>"));
end AlternativeJoin2;
