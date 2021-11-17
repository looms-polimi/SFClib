within ExternalEvents.MWEs;

model MWE_001
  parameter Integer n_event_sources=5;
  Elementary_components.Event_source_minimal esources[n_event_sources];
equation

annotation(
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end MWE_001;