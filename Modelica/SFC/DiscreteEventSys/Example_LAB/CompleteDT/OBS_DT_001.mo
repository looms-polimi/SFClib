within SFC.DiscreteEventSys.Example_LAB.CompleteDT;

model OBS_DT_001

  SFC.DiscreteEventSys.DiscreteBlocks.PieceInSystem_NoQueue Piece_In annotation(
    Placement(visible = true, transformation(origin = {-72, 2}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput IN annotation(
    Placement(visible = true, transformation(origin = {-162, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.Belt_xBG1_toMachine belt_xBG1_toMachine annotation(
    Placement(visible = true, transformation(origin = {48, 6}, extent = {{-38, -38}, {38, 38}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {146, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {146, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {146, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {146, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(IN, Piece_In.In) annotation(
    Line(points = {{-162, 2}, {-107, 2}}, color = {255, 0, 255}));
  connect(belt_xBG1_toMachine.tE, tE) annotation(
    Line(points = {{90, 18}, {138, 18}, {138, 22}, {146, 22}}, color = {255, 0, 255}));
  connect(belt_xBG1_toMachine.tI, tI) annotation(
    Line(points = {{90, 10}, {140, 10}, {140, 6}, {146, 6}}, color = {255, 0, 255}));
  connect(belt_xBG1_toMachine.tW, tW) annotation(
    Line(points = {{90, 2}, {124, 2}, {124, -12}, {146, -12}, {146, -10}}, color = {255, 0, 255}));
  connect(belt_xBG1_toMachine.tF, tF) annotation(
    Line(points = {{90, -6}, {116, -6}, {116, -26}, {146, -26}, {146, -26}}, color = {255, 0, 255}));
  connect(Piece_In.Out1_Belt, belt_xBG1_toMachine.Belt) annotation(
    Line(points = {{-22, 18}, {14, 18}, {14, 22}, {18, 22}}, color = {255, 0, 255}));
  connect(Piece_In.Out2_xBG1, belt_xBG1_toMachine.xBG1) annotation(
    Line(points = {{-22, -14}, {16, -14}, {16, -10}, {18, -10}}, color = {255, 0, 255}));
  annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {-2, 0}, extent = {{-64, 14}, {64, -14}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)));


end OBS_DT_001;
