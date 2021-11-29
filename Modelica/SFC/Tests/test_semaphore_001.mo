within SFC.Tests;

model test_semaphore_001 "Action with S qualifier - connected to an Initial Step"
SFC.BasicBlocks.Condition C00_01(y = S00.t > 2.05) annotation(
    Placement(visible = true, transformation(origin = {52, 54}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C01_02(y = S01.t > 1.03) annotation(
    Placement(visible = true, transformation(origin = {55, -6}, extent = {{-19, -10}, {19, 10}}, rotation = 0)));
 SFC.BasicBlocks.Condition C02_00(y = sin(time) > 0.5) annotation(
    Placement(visible = true, transformation(origin = {57, -68}, extent = {{-17, -10}, {17, 10}}, rotation = 0)));
 SFC.BasicBlocks.Step S00(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-7, 91}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T00_01 annotation(
    Placement(visible = true, transformation(origin = {-10, 52}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Step S01 annotation(
    Placement(visible = true, transformation(origin = {-7, 25}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T02_00 annotation(
    Placement(visible = true, transformation(origin = {-13, -73}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 SFC.BasicBlocks.Step S02 annotation(
    Placement(visible = true, transformation(origin = {-7, -39}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T01_02 annotation(
    Placement(visible = true, transformation(origin = {-12, -10}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 inner BasicBlocks.CyclicGroup cyclicGroup annotation(
    Placement(visible = true, transformation(origin = {-168, 176}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S02.OUT, T02_00.IN) annotation(
    Line(points = {{-7, -50}, {-7, -57}, {-13, -57}, {-13, -69}}));
  connect(S01.OUT, T01_02.IN) annotation(
    Line(points = {{-7, 14}, {-7, 6}, {-12, 6}, {-12, -6}}));
 connect(S00.OUT, T00_01.IN) annotation(
    Line(points = {{-7, 80}, {-7, 70}, {-10, 70}, {-10, 56}}));
 connect(T00_01.OUT, S01.IN) annotation(
    Line(points = {{-10, 48}, {-10, 45.8}, {-7, 45.8}, {-7, 36.8}}));
  connect(T01_02.OUT, S02.IN) annotation(
    Line(points = {{-12, -13.6}, {-12, -17.4}, {-7, -17.4}, {-7, -27.2}}));
  connect(T02_00.OUT, S00.IN) annotation(
    Line(points = {{-13, -76.8}, {-13, -91.8}, {-52, -91.8}, {-52, 122.2}, {-6, 122.2}, {-6, 102.2}}));
 connect(T00_01.C, C00_01.y) annotation(
    Line(points = {{12, 52}, {29.6, 52}, {29.6, 54}}, color = {255, 0, 255}));
  connect(T01_02.C, C01_02.y) annotation(
    Line(points = {{9.6, -10}, {33.6, -10}, {33.6, -6}}, color = {255, 0, 255}));
  connect(T02_00.C, C02_00.y) annotation(
    Line(points = {{9.8, -73}, {37.8, -73}, {37.8, -69}}, color = {255, 0, 255}));
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
end test_semaphore_001;