within SFClib_examples.Example_00_Introduction;

model Example_00_clock_events
  parameter Integer n=100;
  final parameter Real tinis[n] = zeros(n);// {0.01*i/n for i in 1:n};
  PI_loop_DT loops[n](tini=tinis);
  annotation(
    experiment(StartTime = 0, StopTime = 6, Tolerance = 1e-3, Interval = 0.001),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));

end Example_00_clock_events;