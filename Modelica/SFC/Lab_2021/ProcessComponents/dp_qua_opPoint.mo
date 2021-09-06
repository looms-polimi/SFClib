within SFC.Lab_2021.ProcessComponents;

model dp_qua_opPoint
  parameter MassFlowRate wnom=0.01;
  parameter PressureDifference dpnom=5000;
  SFC.Lab_2021.Interfaces.pwh pwh_a annotation(
    Placement(visible = true, transformation(origin = {116, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-119, -1}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  SFC.Lab_2021.Interfaces.pwh pwh_b annotation(
    Placement(visible = true, transformation(origin = {126, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {119, -1}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  MassFlowRate w(start=wnom,fixed=false);
equation
  pwh_a.w + pwh_b.w = 0;
  w = pwh_a.w;
  pwh_a.p-pwh_b.p = dpnom/wnom^2*w*abs(w);
  pwh_a.h = inStream(pwh_b.h);
  pwh_b.h = inStream(pwh_a.h);
annotation(
    Icon(graphics = {Text(origin = {2, 3}, lineColor = {238, 238, 236}, extent = {{-54, 49}, {54, -49}}, textString = "wT"), Rectangle(fillColor = {52, 101, 164}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 38}, {100, -38}}), Text(origin = {-1, 2}, lineColor = {238, 238, 236}, extent = {{-59, 22}, {59, -22}}, textString = "dp qua")}));
end dp_qua_opPoint;