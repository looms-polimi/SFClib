within SFC.Lab_2021.ProcessComponents;

model prescribed_pT
  SFC.Lab_2021.Interfaces.pwh pwh_a annotation(
    Placement(visible = true, transformation(origin = {116, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {119, -1}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput p annotation(
    Placement(visible = true, transformation(origin = {-150, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-150, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput T annotation(
    Placement(visible = true, transformation(origin = {-156, -56}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-156, -56}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
protected
  Media.LinearLiquid liq;
equation
  liq.p = p;
  liq.T = T;
  pwh_a.p = p;
  pwh_a.h = liq.h;
annotation(
    Icon(graphics = {Ellipse(fillColor = {52, 101, 164}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {0, 9}, lineColor = {238, 238, 236}, extent = {{-54, 49}, {54, -49}}, textString = "pT")}));
end prescribed_pT;