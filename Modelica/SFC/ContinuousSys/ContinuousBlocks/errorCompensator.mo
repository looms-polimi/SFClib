within SFC.ContinuousSys.ContinuousBlocks;
model errorCompensator
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-106, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput actionIN annotation(
    Placement(visible = true, transformation(origin = {30, 42}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  Boolean ON;

algorithm

when edge(actionIN) then
    ON := not pre(ON);
  end when;

  
equation
  if ON then y = u; 
  else y = 0.0; //error compensation
  end if;

annotation(
    uses(Modelica(version = "3.2.3")),
    Icon(graphics = {Rectangle(fillColor = {188, 188, 188}, fillPattern = FillPattern.Solid, extent = {{-100, 80}, {100, -80}}), Text(origin = {2, -1}, extent = {{-56, 17}, {56, -17}}, textString = "%name")}));
end errorCompensator;