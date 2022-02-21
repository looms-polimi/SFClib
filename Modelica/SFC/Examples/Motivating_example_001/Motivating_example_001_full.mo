within SFC.Examples.Motivating_example_001;

model Motivating_example_001_full
  extends Modelica.Icons.Example;
  parameter Real mu=1;
  parameter Real T=2;
  parameter Real ta=2;
  parameter Real Ts=0.2;
  parameter Real umax=2;
  parameter Real umin=-2;
  parameter Real Aw=1;
  parameter Real ythr=0.95;
  parameter String csvName="data.csv";
  parameter Real csvTs=0.01;

  Motivating_example_001_CaA  CaA  (mu=mu,T=T,ta=ta,umin=umin,umax=umax,Aw=Aw,ythr=ythr,Ts=Ts);
  Motivating_example_001_LCaA LCaA (mu=mu,T=T,ta=ta,umin=umin,umax=umax,Aw=Aw,ythr=ythr,Ts=Ts);
  Motivating_example_001_CT   CT   (mu=mu,T=T,ta=ta,umin=umin,umax=umax,Aw=Aw,ythr=ythr);
  String csvLine;
 
algorithm
  when initial() then
     Modelica.Utilities.Files.remove(csvName);
     csvLine := "time,yLCaA,yCaA,yCT,uLCaA,uCaA,uCT,wLCaA,wCaA,wCT,actLCaA,actCaA,actCT";
     Modelica.Utilities.Streams.print(csvLine,csvName);
  end when;
  when sample(0,csvTs) then
     csvLine :=  String(time)+","
                +String(LCaA.y)+","
                +String(CaA.y)+","
                +String(CT.y)+","
                +String(LCaA.u)+","
                +String(CaA.u)+","
                +String(CT.u)+","
                +String(LCaA.w)+","
                +String(CaA.w)+","
                +String(CT.w)
                +String(LCaA.act)+","
                +String(CaA.act)+","
                +String(CT.act);
     Modelica.Utilities.Streams.print(csvLine,csvName);
  end when;
  when terminal() then
     Modelica.Utilities.Streams.close(csvName);
  end when; 
 
 
 annotation(
    experiment(StartTime = 0, StopTime = 60, Tolerance = 1e-6, Interval = 0.1),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl", noEquidistantTimeGrid = "()", emit_protected = "()"));

end Motivating_example_001_full;