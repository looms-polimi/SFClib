within ExternalEvents.MWEs;

model MWE_005_AlignEvents_01
  Elementary_components.condition_periodic_sampler es1(Tc=0.2);
  Elementary_components.condition_periodic_sampler es2(Tc=0.4);
equation
  es1.condition = sin(time)>0.85;
  es2.condition = sin(1.2*time)>0.95;
annotation(
    experiment(StartTime = 0, StopTime = 20, Tolerance = 1e-6, Interval = 0.04),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end MWE_005_AlignEvents_01;