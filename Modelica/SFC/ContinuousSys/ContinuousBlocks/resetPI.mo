within SFC.ContinuousSys.ContinuousBlocks;

model resetPI
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-64, 34}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {100, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput commandIN annotation(
    Placement(visible = true, transformation(origin = {24, 32}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 110}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));

  Boolean ON;
  
  outer Modelica.SIunits.Time T;
  outer Real k;
  
  Real x(start = 0);
  
algorithm
when edge(commandIN) then
    ON := not pre(ON);
  end when;

when not ON then reinit (x, 0.0); end when;
//when not ON then x:=0.0; end when;

equation
  der(x) = u / T;
  y = k * (x + u);
  
  annotation(
    uses(Modelica(version = "3.2.3")),
    Icon(graphics = {Rectangle(fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-30, 14}, extent = {{-4, 6}, {62, -42}}, textString = "PI"), Text(origin = {-36, -45}, extent = {{-34, 17}, {108, -19}}, textString = "reset")}, coordinateSystem(initialScale = 0.1)));

end resetPI;
