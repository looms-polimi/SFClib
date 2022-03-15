within SFClib_paper_example_models;

model DAE_sample_hold
  parameter Real T      = 1;
  parameter Real omega  = 1;
  parameter Real t_sh   = 0.1;
  parameter Real ystart = 0;
  Real u,y(start=ystart);
  discrete Real y_sh;
equation
  y + T*der(y) = u;
  u            = sin(omega*time);
algorithm
  when sample(0,t_sh) then
    y_sh := y;
  end when;  
annotation(
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end DAE_sample_hold;