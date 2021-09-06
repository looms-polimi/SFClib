within SFC.Lab_2021.ProcessComponents;

model Tank_freesurface_jacketed_insulated
  parameter Area Sbase=0.1;
  parameter Length lstart=0.2;
  parameter Temperature Tstart=273.15+20;
  SFC.Lab_2021.Interfaces.pwh pwh_a annotation(
    Placement(visible = true, transformation(origin = {-112, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-118, -82}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  SFC.Lab_2021.Interfaces.pwh pwh_b annotation(
    Placement(visible = true, transformation(origin = {-102, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {118, -82}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  Length l(start=lstart,stateSelect=StateSelect.always);
  Temperature T(start=Tstart,stateSelect=StateSelect.prefer);
  Pressure p(start=Modelica.Constants.g_n*liq.ro0*lstart);
  Mass M(start=Sbase*lstart*liq.ro0,stateSelect=StateSelect.never);
  SpecificEnthalpy h(stateSelect=StateSelect.avoid);
  Energy E(start=Sbase*lstart*liq.ro0*liq.c0*Tstart,stateSelect=StateSelect.never);
protected
  constant Mass M_epsilon=1e-9;
  Media.LinearLiquid liq;

equation
  liq.p   = p;
  liq.h   = h;
  liq.T   = T;
  pwh_a.p = pwh_b.p;
  pwh_a.p = p;
  p = Modelica.Constants.g_n*liq.ro*l;
  M = liq.ro*Sbase*l;
  E = M*(liq.h-p/liq.ro);
  if M<M_epsilon and pwh_a.w+pwh_b.w<0 then
     der(M) = 0;
     der(E) = 0;
  else
     der(M) = pwh_a.w+pwh_b.w;
     der(E) = pwh_a.w*actualStream(pwh_a.h)+pwh_b.w*actualStream(pwh_b.h);
  end if;
  pwh_a.h = h;
  pwh_b.h = h;
annotation(
    Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}})}),
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Tank_freesurface_jacketed_insulated;