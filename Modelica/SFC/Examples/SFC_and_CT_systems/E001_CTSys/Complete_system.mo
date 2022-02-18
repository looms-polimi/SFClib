within SFC.Examples.SFC_and_CT_systems.E001_CTSys;

model Complete_system
 extends Modelica.Icons.Example;
 Modelica.Blocks.Math.BooleanToReal b2r1 annotation(
    Placement(visible = true, transformation(origin = {-20, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.SFCio.Read_boolean rb1(variable_name = "cs") annotation(
    Placement(visible = true, transformation(origin = {-70, 4}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
 Modelica.Blocks.Continuous.TransferFunction P(a = {10, 1}) annotation(
    Placement(visible = true, transformation(origin = {20, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.SFCio.Write_real wr1(variable_name = "pv") annotation(
    Placement(visible = true, transformation(origin = {70, 4}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
 SFC.Examples.SFC_and_CT_systems.E001_CTSys.Cylic_object_1 cylic_object_1 annotation(
    Placement(visible = true, transformation(origin = {-70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.Examples.SFC_and_CT_systems.E001_CTSys.Cyclic_object_2 cyclic_object_2 annotation(
    Placement(visible = true, transformation(origin = {-30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.Examples.SFC_and_CT_systems.E001_CTSys.Cyclic_object_3 cyclic_object_3 annotation(
    Placement(visible = true, transformation(origin = {10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(P.y, wr1.u) annotation(
    Line(points = {{31, 4}, {47, 4}}, color = {0, 0, 127}));
  connect(b2r1.y, P.u) annotation(
    Line(points = {{-9, 4}, {7, 4}}, color = {0, 0, 127}));
  connect(rb1.y, b2r1.u) annotation(
    Line(points = {{-48, 4}, {-32, 4}}, color = {255, 0, 255}));
end Complete_system;