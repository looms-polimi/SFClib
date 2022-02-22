within SFC.Examples.Application_example_001;

model LogicControl2
  SFC.Examples.Application_example_001.LVL_bulk sLVL_bulk annotation(
    Placement(visible = true, transformation(origin = {-103, 25}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  SFC.Examples.Application_example_001.SEQ_recipes sEQ_recipes annotation(
    Placement(visible = true, transformation(origin = {14, 55}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
  SFC.Examples.Application_example_001.WorkCycle workCycle annotation(
    Placement(visible = true, transformation(origin = {51.5, -13.5}, extent = {{-25.5, -25.5}, {25.5, 25.5}}, rotation = 0)));
  SFC.Examples.Application_example_001.SEQ_clean sEQ_clean annotation(
    Placement(visible = true, transformation(origin = {83, 55}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
equation

  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-200, -200}, {200, 200}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {-0.5, 0}, textColor = {32, 74, 135}, extent = {{-98, 99}, {99, -99}}, textString = "LC")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end LogicControl2;