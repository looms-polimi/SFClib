within SFC.Examples.Application_example_001;

model CompleteSystem
  extends Modelica.Icons.Example;
  Plant plant annotation(
    Placement(visible = true, transformation(origin = {-8, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModulatingControl modulatingControl annotation(
    Placement(visible = true, transformation(origin = {-16, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  LogicControl logicControl annotation(
    Placement(visible = true, transformation(origin = {32, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

annotation(
    experiment(StartTime = 0, StopTime = 20000, Tolerance = 1e-6, Interval = 40),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end CompleteSystem;