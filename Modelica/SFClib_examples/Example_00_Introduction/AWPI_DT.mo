within SFClib_examples.Example_00_Introduction;

model AWPI_DT
  parameter Real K=1;
  parameter Real Ti=1;
  parameter Real CSmin=-1;
  parameter Real CSmax=1;
  parameter Real CSini=0;
  parameter Real Ts=0.01;
  parameter Real tini=0;
  Modelica.Blocks.Interfaces.RealInput SP annotation(
    Placement(visible = true, transformation(origin = {-122, 58}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 38}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput PV annotation(
    Placement(visible = true, transformation(origin = {-120, -46}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput CS annotation(
    Placement(visible = true, transformation(origin = {76, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  discrete Real e,x,xold,cs;
equation
  cs = CS;
algorithm
  when sample(tini,Ts) then
    e    := SP-PV;
    cs   := max(CSmin,min(CSmax,K*e+x));
    x    := (Ti*xold+Ts*cs)/(Ts+Ti);
    xold := x;
  end when;
initial algorithm
  x    := CSini-K*(SP-PV);
  xold := x;
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})));
end AWPI_DT;