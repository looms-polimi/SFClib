within SFClib_examples.Example_00_Introduction;

model Example_00_time_only
  parameter Integer n=100;
  PI_loop_CT loops[n];
  annotation(
    experiment(StartTime = 0, StopTime = 6, Tolerance = 1e-3, Interval = 0.001),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));

end Example_00_time_only;