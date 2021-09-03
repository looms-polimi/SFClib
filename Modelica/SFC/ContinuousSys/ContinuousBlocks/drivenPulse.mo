within SFC.ContinuousSys.ContinuousBlocks;
block drivenPulse
  Modelica.Blocks.Interfaces.RealOutput pulseOUT annotation(
    Placement(visible = true, transformation(origin = {102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Real amplitude = 1;
  //Real out = 0.0;
  SFC.Interfaces.actionIN pulseIN[n] annotation(
    Placement(visible = true, transformation(origin = {-104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-98, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Integer n=1;

equation
  //pulseOUT = out;
  
algorithm

for i in 1:n loop
  when edge(pulseIN[i].action) then
    if pre(pulseOUT) == 0.0 then
      pulseOUT := amplitude;
    elseif pre(pulseOUT) > 0.0 then
      pulseOUT := 0.0;
    end if;
  end when;
end for;
  
  annotation(
    uses(Modelica(version = "3.2.3")),
    Icon(graphics = {Rectangle(fillColor = {191, 191, 191}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Line(origin = {2.33967, 8.125}, points = {{-65.5, -55}, {4.5, -55}, {4.5, 55}, {66.5, 55}, {64.5, 55}}, thickness = 10), Text(origin = {-11, 129}, extent = {{-23, 41}, {35, -43}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)));
end drivenPulse;
