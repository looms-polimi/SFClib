within SFClib_examples.Example_02_motivation;

model cascaded_when_clk_noclk 
  parameter Boolean                      useTs  = false;
  parameter Modelica.SIunits.Time        Ts     = 1e-4;
  Boolean F1,F2,F3,c12,c23,c31;
equation
  c12 = sin(time)>0.5;
  c23 = sin(time)>0.5;
  c31 = sin(time)>0.5;

algorithm
  when pre(F1) and c12 and (not(useTs) or (useTs and sample(0,Ts))) then
       F1 := false;
       F2 := true;       
  end when;
  when F2 and c23 and (not(useTs) or (useTs and sample(0,Ts))) then
       F2 := false;
       F3 := true;       
  end when;
  when F3 and c31 and (not(useTs) or (useTs and sample(0,Ts))) then
       F3 := false;
       F1 := true;       
  end when;
initial algorithm
  F1 := true;
  F2 := false;
  F3 := false;
  
  
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end cascaded_when_clk_noclk;
