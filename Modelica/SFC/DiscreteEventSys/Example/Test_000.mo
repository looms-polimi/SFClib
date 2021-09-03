within SFC.DiscreteEventSys.Example;

model Test_000
  SFC.DiscreteEventSys.DiscreteBlocks.SystemToMachineStates systemToMachineStates annotation(
    Placement(visible = true, transformation(origin = {14, -22}, extent = {{-46, -46}, {46, 46}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse PieceIn(period = 50, startTime = 10, width = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-82, -24}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
equation
  connect(systemToMachineStates.IN, PieceIn.y) annotation(
    Line(points = {{-22, -22}, {-74, -22}, {-74, -24}, {-74, -24}}, color = {255, 0, 255}));
protected
end Test_000;
