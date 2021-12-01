within SFC.BasicBlocks;

partial model ModelWithCyclicGroup


  inner SFC.BasicBlocks.CyclicGroup cyclicGroup(period = 1, phase = 0)  annotation(
    Placement(visible = true, transformation(origin = {-192, 192}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
equation

annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end ModelWithCyclicGroup;