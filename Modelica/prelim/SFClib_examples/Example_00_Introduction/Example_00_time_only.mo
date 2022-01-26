within SFClib_examples.Example_00_Introduction;

model Example_00_time_only
  parameter Integer n = 100;
  PI_loop_CT loops[n];
equation
  loops[1].SP = if time < 1 then 0 else 1;
  for i in 1:n - 1 loop
    connect(loops[i].PV, loops[i + 1].SP);
  end for;
  annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-12, Interval = 0.1),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Example_00_time_only;