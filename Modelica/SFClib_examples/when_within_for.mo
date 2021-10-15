package when_within_for

  function xoredge
 input Boolean[:] unew;
    input Boolean[:] uold;
    output Boolean y[size(unew, 1)];
  algorithm
    for i in 1:size(unew, 1) loop
      y[i] := unew[i] and not uold[i];
    end for;
  end xoredge;
  
  function xoredge_any
  input Boolean[:] unew;
    input Boolean[:] uold;
    output Boolean y;
  algorithm
    y := false;
    for i in 1:size(unew, 1) loop
      if unew[i] and not uold[i] then
         y := true;
         break;
      end if;
    end for;
  end xoredge_any;
 
model m1
  Boolean c[3](each start = false);
  Boolean dc[3](each start = false);
  Integer ev[3](each start=0);
  final parameter Integer n=size(c,1) annotation(Evaluate = true);
equation
  c[1] = sin(time) > 0;
  c[2] = sin(1.5 * time) > 0;
  c[3] = sin(time ^ 1.2) > 0;
algorithm  
  when change(c) then
    dc := xoredge(c,pre(c));
    for i in 1:3 loop
        if dc[i] then 
           ev[i] := ev[i]+1; // azione P
        end if;
    end for;
  end when;
  
  annotation(
      experiment(StartTime = 0, StopTime = 30, Tolerance = 1e-6, Interval = 0.01),
      __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
      __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end m1;
end when_within_for;