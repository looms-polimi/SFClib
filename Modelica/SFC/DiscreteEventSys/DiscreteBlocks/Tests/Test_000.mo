within SFC.DiscreteEventSys.DiscreteBlocks.Tests;

model Test_000
  Modelica.Blocks.Sources.BooleanPulse PieceIn(period = 50, startTime = 10, width = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-102, -14}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.PieceInSystem_NoQueue Piece_In annotation(
    Placement(visible = true, transformation(origin = {16, -4}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.Belt_xBG1_toMachine belt_xBG1_toMachine annotation(
    Placement(visible = true, transformation(origin = {143, -5}, extent = {{-49, -49}, {49, 49}}, rotation = 0)));
equation
  connect(PieceIn.y, Piece_In.In) annotation(
    Line(points = {{-94, -14}, {-68, -14}, {-68, -2}, {-20, -2}, {-20, -4}}, color = {255, 0, 255}));
  connect(Piece_In.Out1_Belt, belt_xBG1_toMachine.Belt) annotation(
    Line(points = {{66, 12}, {106, 12}, {106, 14}, {104, 14}}, color = {255, 0, 255}));
  connect(Piece_In.Out2_xBG1, belt_xBG1_toMachine.xBG1) annotation(
    Line(points = {{66, -20}, {106, -20}, {106, -24}, {104, -24}}, color = {255, 0, 255}));
end Test_000;
