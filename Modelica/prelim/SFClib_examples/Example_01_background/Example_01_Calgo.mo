within SFClib_examples.Example_01_background;

model Example_01_Calgo
  parameter Real mu = 1;
  parameter Real T = 2;
  parameter Real K = 3;
  parameter Real Ti = 1;
  parameter Real Ts = 0.05;
  Real w, y(start = 0);
  discrete Real e, u, up, ui, ui_old(start = 0);
equation
  y + T * der(y) = mu * u;
// Process
  w = if time < 1 then 0 else 1;
// Set point
algorithm
  when sample(0, Ts) then
    e := w - y;
    up := K * e;
    ui := ui_old + K * Ts / Ti * e;
    ui_old := ui;
    u := up + ui;
  end when;
// Error
// P control
// I control
// previous I
// Control
  annotation(
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Example_01_Calgo;