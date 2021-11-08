within SFC.Branching;

model AlternativeJoin3 "Alternative Join with three branches"
  SFC.Interfaces.TransitionOutput IN1 annotation(
    Placement(visible = true, transformation(origin = {4, 38}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-400, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput IN2 annotation(
    Placement(visible = true, transformation(origin = {14, 48}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput IN3 annotation(
    Placement(visible = true, transformation(origin = {24, 58}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {400, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput OUT annotation(
    Placement(visible = true, transformation(origin = {34, 68}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

algorithm
  
 OUT.fire := change(IN1.fire) or change(IN2.fire) or change(IN3.fire);
 
  
annotation(
    Icon(graphics = {Rectangle(origin = {0, 1}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}})}),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><div style=\"font-size: medium;\"><b>AlternativeJoin3</b>&nbsp;join three alternative sequences of an SFC. The block has two&nbsp;<i>TransitionOutput</i>&nbsp;input to be preceded by three transitions and one&nbsp;<i>TransitionOutput</i>&nbsp;output to be followed by a step.&nbsp;</div><div style=\"font-size: medium;\"><div><div><div><br></div><div>When one of the three transitions is triggered, the three SFC sequences proceed to a common one activating the common step.</div></div></div><div><br></div><div><br></div></div></span></body></html>"));end AlternativeJoin3;
