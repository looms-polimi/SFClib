within SFC.Tests;

model test_semaphore_001b "Action with S qualifier - connected to an Initial Step"
 inner SFC.BasicBlocks.CyclicGroup cyclicGroup(period = 1)  annotation(
    Placement(visible = true, transformation(origin = {-170, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {-30, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-30, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Transition T10 annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C01(y = sin(time) > 0.5)  annotation(
    Placement(visible = true, transformation(origin = {30, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression C10(y = sin(time) > 0.6)  annotation(
    Placement(visible = true, transformation(origin = {30, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-30, 120}, {-30, 92}}));
 connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-30, 88}, {-30, 60}}));
 connect(S1.OUT, T10.IN) annotation(
    Line(points = {{-30, 40}, {-30, 12}}));
 connect(T10.C, C10.y) annotation(
    Line(points = {{-18, 10}, {20, 10}}, color = {255, 0, 255}));
 connect(T01.C, C01.y) annotation(
    Line(points = {{-18, 90}, {20, 90}}, color = {255, 0, 255}));
 connect(T10.OUT, S0.IN) annotation(
    Line(points = {{-30, 8}, {-30, -8}, {-70, -8}, {-70, 152}, {-30, 152}, {-30, 140}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div><b>DA CAMBIARE --- test con e senza Tc, con e senza due condizioni true</b></div><div><br></div><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S0</u>. When S0 becomes active, action A is set and remains set until the end of the simulation. Being&nbsp;S0&nbsp;the initial Step, both A and S0 are active from the beginning of the simulation.</div><div><div><br></div>
    
<img width=\"400\" src=\"modelica://SFC/Images/Test/S1.png\"><br>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
 __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
 __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end test_semaphore_001b;