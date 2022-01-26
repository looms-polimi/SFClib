within SFClib_examples.Example_00_Introduction;

model AWPI_CT
  parameter Real K=1;
  parameter Real Ti=1;
  parameter Real CSmin=-1;
  parameter Real CSmax=1;
  parameter Real CSini=0;
  Modelica.Blocks.Interfaces.RealInput SP annotation(
    Placement(visible = true, transformation(origin = {-122, 58}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 38}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput PV annotation(
    Placement(visible = true, transformation(origin = {-120, -46}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput CS annotation(
    Placement(visible = true, transformation(origin = {76, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Real e,x;
equation
  e = SP-PV;
  x + Ti*der(x) = CS;
  CS = max(CSmin,min(CSmax,K*e+x));
initial equation
  K*e+x = CSini;
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})));
end AWPI_CT;