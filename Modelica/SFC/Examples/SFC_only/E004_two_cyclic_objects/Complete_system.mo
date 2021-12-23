within SFC.Examples.SFC_only.E004_two_cyclic_objects;

model Complete_system
  extends Modelica.Icons.Example;
  Cyclic_object_1 co1 annotation(
    Placement(visible = true, transformation(origin = {-50, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Examples.SFC_only.E004_two_cyclic_objects.Cyclic_object_2 co2 annotation(
    Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean rb1(variable_name = "out2")  annotation(
    Placement(visible = true, transformation(origin = {-40, 10}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
equation

annotation(
    experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-6, Interval = 0.1),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Complete_system;