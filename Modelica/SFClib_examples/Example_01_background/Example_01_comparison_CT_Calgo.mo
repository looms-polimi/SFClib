within SFClib_examples.Example_01_background;

model Example_01_comparison_CT_Calgo
  SFClib_examples.Example_01_background.Example_01_CT CT annotation(
    Placement(visible = true, transformation(origin = {-52, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFClib_examples.Utilities.Recorder rec(Ts = 0.005) annotation(
    Placement(visible = true, transformation(origin = {28, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFClib_examples.Example_01_background.Example_01_Calgo Calgo annotation(
    Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression v2rec[5](y = {CT.w, CT.y, CT.u, Calgo.y, Calgo.u}) annotation(
    Placement(visible = true, transformation(origin = {-52, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(v2rec.y, rec.data) annotation(
    Line(points = {{-40, -30}, {16, -30}}, color = {0, 0, 127}));
  annotation(
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Example_01_comparison_CT_Calgo;