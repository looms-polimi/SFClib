within SFC.Examples.Motivating_example_001;

model Motivating_example_001_LCaA
  extends Modelica.Icons.Example;
  parameter Real mu=1;
  parameter Real T=2;
  parameter Real ta=2;
  parameter Real Ts=0.2;
  parameter Real umax=2;
  parameter Real umin=-2;
  parameter Real Aw=1;
  parameter Real ythr=0.95;
  
  Boolean act(start=false);
  Real y(start=0);
  Real u;
  Real xc(start=0);
  discrete Real w(start=Aw);
protected
  parameter Real Ti=T;
  parameter Real K=5*T/mu/ta; 
equation
  /* Plant */
  y+T*der(y) = mu*u;
  /* AW PI controller */
  u = max(umin,min(umax,xc+K*(w-y)));
  xc+Ti*der(xc) = u;
algorithm
  /* Synchronous relay loop*/
  when sample(0,Ts) then
    act := not act;
    if w>0 and y>=ythr then
       w := -Aw;
    end if;
    if w<0 and y<=-ythr then
       w := Aw;
    end if;  
  end when;
annotation(
    experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-6, Interval = 0.1),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Motivating_example_001_LCaA;