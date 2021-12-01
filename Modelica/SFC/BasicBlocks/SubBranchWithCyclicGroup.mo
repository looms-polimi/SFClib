within SFC.BasicBlocks;

partial model SubBranchWithCyclicGroup
extends SFC.Interfaces.subBranchInterface;
  parameter Real period=1;
  parameter Real phase=0;
  inner SFC.BasicBlocks.CyclicGroup cyclicGroup(period = period, phase = phase)  annotation(
    Placement(visible = true, transformation(origin = {-80, 82}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
equation

end SubBranchWithCyclicGroup;