within ExternalEvents.MWEs;

model MWE_004_SFC_01
  parameter Real Tc=1;
  Boolean clk;
  //discrete Integer cycle_cnt(start=0);
  Boolean X0,X1,X2,X3,X4,X5,X6,X7;
  Boolean t_0_1,t_0_23,t_2_4,t_3_5,t_45_6,t_6_1,t_1_7,t_7_0;
  Boolean c_0_1,c_0_23,c_2_4,c_3_5,c_45_6,c_6_1,c_1_7,c_7_0;
equation
  c_0_1  = false;
  c_0_23 = true;
  c_2_4  = true;
  c_3_5  = Functions.brectpulse(time-5.5,0.1);
  c_45_6 = true;
  c_6_1  = true;
  c_1_7  = true;
  c_7_0  = true;

algorithm
  when sample(0,Tc) then
  
    clk    := not clk;
  
    t_0_1  := X0        and c_0_1;
    t_0_23 := X0        and c_0_23 and not c_0_1;
    t_2_4  := X2        and c_2_4;
    t_3_5  := X3        and c_3_5;
    t_45_6 := X4 and X5 and c_45_6;
    t_6_1  := X6        and c_6_1;
    t_1_7  := X1        and c_1_7;
    t_7_0  := X7        and c_7_0;
    
    if t_0_1  then X0 := false;              X1 := true;             end if;
    if t_0_23 then X0 := false;              X2 := true; X3 := true; end if;
    if t_2_4  then X2 := false;              X4 := true;             end if;
    if t_3_5  then X3 := false;              X5 := true;             end if;
    if t_45_6 then X4 := false; X5 := false; X6 := true;             end if;
    if t_6_1  then X6 := false;              X1 := true;             end if;
    if t_1_7  then X1 := false;              X7 := true;             end if;
    if t_7_0  then X7 := false;              X0 := true;             end if;
  
  end when;
  
initial algorithm
  clk := false;
  X0  := true;
  X1  := false;
  X2  := false;
  X3  := false;
  X4  := false;
  X5  := false;
  X6  := false;
  X7  := false;

annotation(
    experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-6, Interval = 0.1),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end MWE_004_SFC_01;