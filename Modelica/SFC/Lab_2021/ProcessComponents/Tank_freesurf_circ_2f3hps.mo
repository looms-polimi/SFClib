within SFC.Lab_2021.ProcessComponents;

model Tank_freesurf_circ_2f3hps
  "circular free surface ideally mixed tank with wall, two liquid flanges, one heat port in liquid,
  one for air and a level-dependent one for the wall"
  replaceable model Liquid=Media.BaseClasses.Base_LinearLiquid 
              constrainedby Media.BaseClasses.Base_LinearLiquid;
  parameter Length Dbase=0.5 "tank base diameter";
  parameter Length H=1 "tank height";
  parameter Length lstart=0.2;
  parameter Temperature Tstart=273.15+20;
  SFC.Lab_2021.Interfaces.pwh pwh_a annotation(
    Placement(visible = true, transformation(origin = {-112, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-118, -82}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  SFC.Lab_2021.Interfaces.pwh pwh_b annotation(
    Placement(visible = true, transformation(origin = {-102, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {118, -82}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));

  Integer status "0 empty, 1 normal, 2 spilling from top";

  Length l(start=lstart,stateSelect=StateSelect.always);
  Temperature T(start=Tstart,stateSelect=StateSelect.prefer);
  Pressure p(start=Modelica.Constants.g_n*liq.ro0*lstart);
  Mass M(start=Sbase*lstart*liq.ro0,stateSelect=StateSelect.never);
  SpecificEnthalpy h(stateSelect=StateSelect.avoid);
  Energy E(start=Sbase*lstart*liq.ro0*liq.c0*Tstart,stateSelect=StateSelect.never);
  MassFlowRate wspill;
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a hp_liquid annotation(
    Placement(visible = true, transformation(origin = {-202, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -60}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
protected
  constant Length l_epsilon=1e-10;
  final parameter Area Sbase=Modelica.Constants.pi*Dbase^2/4;
  Liquid liq;
algorithm
  when status==1 and l<l_epsilon
    or status==0 and pwh_a.w+pwh_b.w>0
    or status==1 and l>H
    or status==2 and pwh_a.w+pwh_b.w<0 then
       if     status==1 and l<l_epsilon       then status:=0;
       elseif status==0 and pwh_a.w+pwh_b.w>0 then status:=1;
       elseif status==1 and l>H               then status:=2;
       else                                        status:=1;
       end if;
  end when;
/*
  HOW THE ABOVE SHOULD BE WRITTEN IF ONE COULD DISABLE EVENT ITERATION
  WHEN IT DOES NOT MAKE ANY SENSE
  when status==1 and l<l_epsilon       then status:=0; end when;
  when status==0 and pwh_a.w+pwh_b.w>0 then status:=1; end when;
  when status==1 and l>H               then status:=2; end when;
  when status==2 and pwh_a.w+pwh_b.w<0 then status:=1; end when;
*/  
equation
  liq.p   = p;
  liq.h   = h;
  liq.T   = T;
  pwh_a.p = pwh_b.p;
  pwh_a.p = p;
  p = Modelica.Constants.g_n*liq.ro*l;
  M = liq.ro*Sbase*l;
  E = M*(liq.h-p/liq.ro);
  if status==0 then
     der(M) = 0;
     der(E) = 0;
     wspill = 0;
  elseif status==1 then
     der(M) = pwh_a.w+pwh_b.w;
     der(E) = pwh_a.w*actualStream(pwh_a.h)+pwh_b.w*actualStream(pwh_b.h)+hp_liquid.Q_flow;
     wspill = 0;
  else /* status==2 */
     der(M) = 0;
     der(E) = pwh_a.w*actualStream(pwh_a.h)+pwh_b.w*actualStream(pwh_b.h)+hp_liquid.Q_flow-wspill*liq.h;
     wspill = pwh_a.w+pwh_b.w; 
  end if; /* status */
  hp_liquid.T    = T;
  pwh_a.h = h;
  pwh_b.h = h;
initial equation
  status = if lstart<=0 then 0
           elseif lstart>0 and lstart<H then 1
           else 2;

annotation(
    Icon(graphics = {Rectangle(lineColor = {186, 189, 182}, fillColor = {238, 238, 236}, fillPattern = FillPattern.VerticalCylinder, extent = {{-100, 100}, {100, -100}}), Rectangle(origin = {0, -26}, lineColor = {52, 101, 164}, fillColor = {52, 101, 164}, fillPattern = FillPattern.Solid, extent = {{-100, 74}, {100, -74}})}),
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl", emit_protected = "()"));
end Tank_freesurf_circ_2f3hps;