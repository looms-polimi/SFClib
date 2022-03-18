within SFC.Examples.Application_example_001;

model LogicControl
  SFC.Examples.Application_example_001.LVL_bulk sLVL_bulk annotation(
    Placement(visible = true, transformation(origin = {-120, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Examples.Application_example_001.SEQ_recipe sSEQ_recipe annotation(
    Placement(visible = true, transformation(origin = {-80, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-200, -200}, {200, 200}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(fillColor = {78, 154, 6}, extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {32, 74, 135}, fillColor = {183, 244, 224}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {-0.5, 0}, lineColor = {32, 74, 135}, fillColor = {78, 154, 6}, extent = {{-98, 99}, {99, -99}}, textString = "LC")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end LogicControl;