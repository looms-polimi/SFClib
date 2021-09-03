within SFClib_examples;

model TeeSeries
  parameter Integer N=4;
  ControlledRCtee Tees[N] annotation(
    Placement(visible = true, transformation(origin = {-8, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression w(y = 5 + sin(time))  annotation(
    Placement(visible = true, transformation(origin = {-72, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  for i in 1:N-1 loop
    connect(Tees[i].n,Tees[i+1].p);
    connect(Tees[i].SPout,Tees[i+1].SPin);
  end for;
  connect(w.y,Tees[1].SPin);
annotation(
    experiment(StartTime = 0, StopTime = 2, Tolerance = 1e-6, Interval = 0.004),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end TeeSeries;