within ExternalEvents.MWEs;

model MWE_002a_Clock_02
  parameter Boolean futtitinni=true annotation(Evaluate = true);
  //Boolean futtitinni;
  Real y[100](each start=0);
  discrete Real x;
equation
  y+der(y)=sin(time)*ones(size(y,1))*exp(-time);
  //futtitinni = (y[1]>0);
algorithm
  when sample(0,0.05) and not futtitinni then
    for i in 1:10000 loop
     x := x+sin(0.25*i);
    end for;
    x := x/200;
  end when;
annotation(
    experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-9, Interval = 0.4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end MWE_002a_Clock_02;