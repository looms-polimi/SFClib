within ExternalEvents.MWEs;

model MWE_003_ClockGating
  Real x(start=0);
  Integer ctr(start=0);
  Boolean clk(start=false);
equation
  x+der(x) = sin(6.28/5*time);
algorithm
  when x>0.5 and sample(0,0.05) then
    clk := not clk;
    ctr := ctr+1;
  end when;
annotation(
    experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-9, Interval = 0.4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end MWE_003_ClockGating;