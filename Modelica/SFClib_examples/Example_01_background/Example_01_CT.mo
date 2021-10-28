within SFClib_examples.Example_01_background;

model Example_01_CT
  parameter Real mu = 1;
  parameter Real T = 2;
  parameter Real K = 3;
  parameter Real Ti = 1;
  Real w, e, u, up, ui(start = 0), y(start = 0);
equation
  y + T * der(y) = mu * u;
// Process
  e = w - y;
// Error
  up = K * e;
// P control
  der(ui) = K / Ti * e;
// I control
  u = up + ui;
// Control
  w = if time < 1 then 0 else 1;
// Set point
  annotation(
    experiment(StartTime = 0, StopTime = 10, Tolerance = 0.0001, Interval = 0.02),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Example_01_CT;