within SFC.Lab_2021.ProcessComponents;

model fixed_wT
  replaceable model Liquid=Media.BaseClasses.Base_LinearLiquid 
              constrainedby Media.BaseClasses.Base_LinearLiquid;
  parameter MassFlowRate w=0.01;
  parameter Temperature T=273.15+20;
  SFC.Lab_2021.Interfaces.pwh pwh_a annotation(
    Placement(visible = true, transformation(origin = {116, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {119, -1}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
protected
  Liquid liq;
equation
  liq.p = pwh_a.p;
  liq.T = T;
  pwh_a.w = -w;
  pwh_a.h = liq.h;
annotation(
    Icon(graphics = {Ellipse(fillColor = {52, 101, 164}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {2, 3}, lineColor = {238, 238, 236}, extent = {{-54, 49}, {54, -49}}, textString = "wT")}));
end fixed_wT;