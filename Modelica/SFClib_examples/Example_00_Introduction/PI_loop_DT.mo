within SFClib_examples.Example_00_Introduction;

model PI_loop_DT
  parameter Real mu=1.5;
  parameter Real T=4;
  parameter Real K=5;
  parameter Real Ti=3;
  parameter Real CSmin=-2;
  parameter Real CSmax=2;
  parameter Real CSini=0;
  parameter Real Ts=0.05;
  parameter Real tini=0;
  SFClib_examples.Example_00_Introduction.AWPI_DT PI(CSini = CSini, CSmax = CSmax, CSmin = CSmin, K = K, Ti = Ti, Ts = Ts, tini = tini)  annotation(
    Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P(a = {T, 1}, b = {mu}) annotation(
    Placement(visible = true, transformation(origin = {10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression SP(y = if time < 1 then 0 else min(1, 5 * (time - 1)))  annotation(
    Placement(visible = true, transformation(origin = {-130, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(PI.CS, P.u) annotation(
    Line(points = {{-38, 30}, {-2, 30}}, color = {0, 0, 127}));
  connect(P.y, PI.PV) annotation(
    Line(points = {{21, 30}, {39, 30}, {39, 0}, {-81, 0}, {-81, 26}, {-63, 26}}, color = {0, 0, 127}));
  connect(SP.y, PI.SP) annotation(
    Line(points = {{-118, 34}, {-62, 34}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    experiment(StartTime = 0, StopTime = 6, Tolerance = 1e-6, Interval = 0.001),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end PI_loop_DT;