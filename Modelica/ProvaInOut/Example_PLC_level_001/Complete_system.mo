within ProvaInOut.Example_PLC_level_001;

model Complete_system
  Cyclic_object_01 cyclic_object_01 annotation(
    Placement(visible = true, transformation(origin = {-68, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Cyclic_object_02 cyclic_object_02 annotation(
    Placement(visible = true, transformation(origin = {-68, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Process process annotation(
    Placement(visible = true, transformation(origin = {8, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-6, Interval = 0.1),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Complete_system;