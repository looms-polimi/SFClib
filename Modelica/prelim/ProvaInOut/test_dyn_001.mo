within ProvaInOut;

model test_dyn_001 "Two consecutive true conditions with a CyclicGroup"
  Modelica.Blocks.Sources.BooleanExpression C20(y = S2.t > 2) annotation(
    Placement(visible = true, transformation(origin = {32, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-30, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-30, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T01(label = "T01") annotation(
    Placement(visible = true, transformation(origin = {-30, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T12(label = "T12") annotation(
    Placement(visible = true, transformation(origin = {-30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T20(label = "T20") annotation(
    Placement(visible = true, transformation(origin = {-30, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner SFC.BasicBlocks.CyclicGroup cyclicGroup(period = 0.01) annotation(
    Placement(visible = true, transformation(origin = {-170, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Real u, y(start = 0);
  Modelica.Blocks.Sources.BooleanExpression C01(y = y > 0.5) annotation(
    Placement(visible = true, transformation(origin = {50, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression C12(y = y < 0.1) annotation(
    Placement(visible = true, transformation(origin = {52, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  ProvaInOut.IO io_S00(N_bool = 1, N_real = 2, vec_name_bool = {"c"}, vec_name_real = {"a", "b"}, vec_value_bool = {false}, vec_value_real = {1, 3}) annotation(
    Placement(visible = true, transformation(origin = {54, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  u = if S0.active then 2 elseif S1.active then -0.5 else 0;
  y + der(y) = u;
  connect(S0.OUT, T01.IN) annotation(
    Line(points = {{-30, 100}, {-30, 72}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-30, 68}, {-30, 40}}));
  connect(S1.OUT, T12.IN) annotation(
    Line(points = {{-30, 20}, {-30, -8}}));
  connect(T12.OUT, S2.IN) annotation(
    Line(points = {{-30, -12}, {-30, -40}}));
  connect(S2.OUT, T20.IN) annotation(
    Line(points = {{-30, -60}, {-30, -88}}));
  connect(T20.OUT, S0.IN) annotation(
    Line(points = {{-30, -92}, {-30, -106}, {-66, -106}, {-66, 146}, {-30, 146}, {-30, 120}}));
  connect(T20.C, C20.y) annotation(
    Line(points = {{-18, -90}, {22, -90}}, color = {255, 0, 255}));
  connect(C12.y, T12.C) annotation(
    Line(points = {{41, -10}, {-18, -10}}, color = {255, 0, 255}));
  connect(C01.y, T01.C) annotation(
    Line(points = {{39, 70}, {-18, 70}}, color = {255, 0, 255}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div><b>SFC con due condizioni consecutive true, come previsto entrambe scattano al multiplo del periodo successivo, gestite dal cyclicGroup&nbsp;</b></div><div><br></div><div>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.01),
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl", noEquidistantTimeGrid = "()"));
end test_dyn_001;