within SFC.Examples.Application_example_001;

model CompleteSystem
  extends Modelica.Icons.Example;
  SFC.Examples.Application_example_001.Plant plant annotation(
    Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Examples.Application_example_001.ModulatingControl modulatingControl annotation(
    Placement(visible = true, transformation(origin = {-10, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Examples.Application_example_001.LogicControl logicControl annotation(
    Placement(visible = true, transformation(origin = {-8, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

annotation(
    experiment(StartTime = 0, StopTime = 14400, Tolerance = 1e-6, Interval = 28.8),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end CompleteSystem;