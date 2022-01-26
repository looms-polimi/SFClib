within ExternalEvents.Elementary_components;

model Event_source_minimal
 parameter Real max_interval=0.2;
 discrete Integer id;
 discrete Real next_time;
 discrete Integer ctr;
algorithm
  when time>=next_time then
    ctr := ctr+1;
    next_time := next_time+max_interval*Functions.mrand();
    Functions.event_handler(id,time);
  end when;
  when initial() then
    id := Functions.register(getInstanceName());
    next_time := max_interval*Functions.mrand();
    ctr := 0;
  end when;
annotation(
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Event_source_minimal;