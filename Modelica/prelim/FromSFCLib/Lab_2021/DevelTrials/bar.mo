within FromSFCLib.Lab_2021.DevelTrials;

model bar
  ProcessComponents.fixed_pT src(p = 200000)  annotation(
    Placement(visible = true, transformation(origin = {-64, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Lab_2021.ProcessComponents.fixed_pT snk(p = 0)  annotation(
    Placement(visible = true, transformation(origin = {38, 26}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  ProcessComponents.dp_qua_opPoint dp(dpnom (displayUnit = "bar") = 1e5, wnom = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-14, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(src.pwh_a, dp.pwh_a) annotation(
    Line(points = {{-52, 26}, {-26, 26}}));
  connect(dp.pwh_b, snk.pwh_a) annotation(
    Line(points = {{-2, 26}, {26, 26}}));
annotation(
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end bar;