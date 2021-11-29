within SFC.Tests;

model test_semaphore_001_twin "Action with S qualifier - connected to an Initial Step"
  test_semaphore_001a SFC1 annotation(
    Placement(visible = true, transformation(origin = {-80, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  test_semaphore_001b SFC2 annotation(
    Placement(visible = true, transformation(origin = {12, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation

protected
  annotation(
    Documentation(info = "<html><head></head><body><div><b>DA CAMBIARE --- test con e senza Tc, con e senza due condizioni true</b></div><div><br></div><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S0</u>. When S0 becomes active, action A is set and remains set until the end of the simulation. Being&nbsp;S0&nbsp;the initial Step, both A and S0 are active from the beginning of the simulation.</div><div><div><br></div>
    
<img width=\"400\" src=\"modelica://SFC/Images/Test/S1.png\"><br>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-6, Interval = 0.1),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
 __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
 __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end test_semaphore_001_twin;