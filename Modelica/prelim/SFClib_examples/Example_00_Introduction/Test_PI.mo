within SFClib_examples.Example_00_Introduction;

model Test_PI
  parameter Real mu=1.5;
  parameter Real T=4;
  parameter Real K=5;
  parameter Real Ti=3;
  parameter Real CSmin=-2;
  parameter Real CSmax=2;
  parameter Real CSini=0;
  parameter Real Ts=0.05;
  Example_00_Introduction.AWPI_CT PI_CT
     (CSini = CSini, CSmax = CSmax, CSmin = CSmin, K = K, Ti = Ti)  annotation(
    Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Example_00_Introduction.AWPI_DT PI_DT
     (CSini = CSini, CSmax = CSmax, CSmin = CSmin, K = K, Ti = Ti, Ts = Ts)  annotation(
    Placement(visible = true, transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P_CT(a = {T, 1}, b = {mu})  annotation(
    Placement(visible = true, transformation(origin = {10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P_DT(a = {T, 1}, b = {mu}) annotation(
    Placement(visible = true, transformation(origin = {10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression SP(y = if time < 1 then 0 else min(1, 5 * (time - 1)))  annotation(
    Placement(visible = true, transformation(origin = {-130, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(PI_CT.CS, P_CT.u) annotation(
    Line(points = {{-38, 30}, {-2, 30}}, color = {0, 0, 127}));
  connect(P_CT.y, PI_CT.PV) annotation(
    Line(points = {{22, 30}, {40, 30}, {40, 0}, {-80, 0}, {-80, 26}, {-62, 26}}, color = {0, 0, 127}));
  connect(PI_DT.CS, P_DT.u) annotation(
    Line(points = {{-38, -30}, {-2, -30}}, color = {0, 0, 127}));
  connect(P_DT.y, PI_DT.PV) annotation(
    Line(points = {{22, -30}, {40, -30}, {40, -60}, {-80, -60}, {-80, -34}, {-62, -34}}, color = {0, 0, 127}));
  connect(SP.y, PI_CT.SP) annotation(
    Line(points = {{-119, 34}, {-62, 34}}, color = {0, 0, 127}));
  connect(SP.y, PI_DT.SP) annotation(
    Line(points = {{-118, 34}, {-100, 34}, {-100, -26}, {-62, -26}}, color = {0, 0, 127}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    experiment(StartTime = 0, StopTime = 6, Tolerance = 1e-6, Interval = 0.001),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Test_PI;