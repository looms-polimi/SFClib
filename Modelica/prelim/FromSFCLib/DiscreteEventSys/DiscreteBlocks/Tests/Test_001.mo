within FromSFCLib.DiscreteEventSys.DiscreteBlocks.Tests;

model Test_001
  Modelica.Blocks.Sources.BooleanPulse PieceIn(period = 50, startTime = 10, width = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-70, 44}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.SystemToMachineStates systemToMachineStates annotation(
    Placement(visible = true, transformation(origin = {11, 45}, extent = {{-33, -33}, {33, 33}}, rotation = 0)));
equation
  connect(PieceIn.y, systemToMachineStates.IN) annotation(
    Line(points = {{-61, 44}, {-33.5, 44}, {-33.5, 45}, {-15, 45}}, color = {255, 0, 255}));
end Test_001;