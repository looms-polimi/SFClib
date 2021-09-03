within SFC.ContinuousSys.ContinuousBlocks;
model OnOffControl
  Modelica.Blocks.Interfaces.RealInput regulatorIN annotation(
    Placement(visible = true, transformation(origin = {-119, 1}, extent = {{-25, -25}, {25, 25}}, rotation = 0), iconTransformation(origin = {-162, -2}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
  //parameter Boolean pre_y_start=false;
  //equation
  Modelica.Blocks.Interfaces.RealOutput controllerOUT annotation(
    Placement(visible = true, transformation(origin = {114, 0}, extent = {{-14, -14}, {14, 14}}, rotation = 0), iconTransformation(origin = {174, 0}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput commandIN annotation(
    Placement(visible = true, transformation(origin = {36, 46}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));

Boolean ON;

algorithm
when change(commandIN) then
    ON := not pre(ON);
end when;

equation
  if ON then controllerOUT = regulatorIN;
  else controllerOUT = 0.0;
  end if;
  annotation(
    Icon(graphics = {Rectangle(lineColor = {0, 171, 0}, fillColor = {198, 198, 198}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{-160, 80}, {160, -80}}), Text(origin = {0, 3}, extent = {{-90, 29}, {90, -29}}, textString = "On/Off Controller", fontSize = 30)}),
    uses(Modelica(version = "3.2.3")));

end OnOffControl;