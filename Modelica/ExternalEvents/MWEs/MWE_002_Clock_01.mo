within ExternalEvents.MWEs;

model MWE_002_Clock_01
  parameter Boolean futtitinni=true annotation(Evaluate = true);
algorithm
  when sample(0,0.05) and not futtitinni then
  end when;
annotation(
    experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-9, Interval = 0.4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end MWE_002_Clock_01;