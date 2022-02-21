within SFC.Examples.SFC_and_CT_systems.E001_CTSys;

model Cyclic_object_3
 extends Modelica.Icons.Example;
 SFC.SFCelements.Step S4(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-16, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression c54(y = S5.t >= 20) annotation(
    Placement(visible = true, transformation(origin = {24, -64}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 SFC.SFCelements.Step S5(initialStep = false) annotation(
    Placement(visible = true, transformation(origin = {-16, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.SFCelements.R_action acs3(action_name = "cs") annotation(
    Placement(visible = true, transformation(origin = {34, -34}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
 SFC.SFCelements.Transition T45 annotation(
    Placement(visible = true, transformation(origin = {-16, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.SFCelements.Transition T54 annotation(
    Placement(visible = true, transformation(origin = {-16, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression c45(y = S4.t >= 100) annotation(
    Placement(visible = true, transformation(origin = {24, -4}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.25) annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T45.OUT, S5.IN) annotation(
    Line(points = {{-16, -6}, {-16, -24}}));
  connect(S5.X, acs3.phase_active) annotation(
    Line(points = {{-4, -34}, {12, -34}}, color = {255, 0, 255}));
  connect(S4.OUT, T45.IN) annotation(
    Line(points = {{-16, 16}, {-16, -2}}));
  connect(T54.C, c54.y) annotation(
    Line(points = {{-4, -64}, {14, -64}}, color = {255, 0, 255}));
  connect(T45.C, c45.y) annotation(
    Line(points = {{-4, -4}, {14, -4}}, color = {255, 0, 255}));
  connect(S5.OUT, T54.IN) annotation(
    Line(points = {{-16, -44}, {-16, -62}}));
  connect(T54.OUT, S4.IN) annotation(
    Line(points = {{-16, -66}, {-16, -76}, {-44, -76}, {-44, 46}, {-16, 46}, {-16, 36}}));
end Cyclic_object_3;