within ExternalEvents.MWEs;

model MWE_002b_Clock_03
  parameter Real Tc=0.05;
  discrete Real next_event_time(start=Tc);
  Boolean futtitinni;
equation
  futtitinni = true;//sin(time)>0;
algorithm
  when time>=next_event_time and not futtitinni then
    next_event_time := time+Tc;
  end when;
annotation(
    experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-9, Interval = 0.4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end MWE_002b_Clock_03;