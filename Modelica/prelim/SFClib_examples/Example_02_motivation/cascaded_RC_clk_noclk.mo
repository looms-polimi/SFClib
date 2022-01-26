within SFClib_examples.Example_02_motivation;

model cascaded_RC_clk_noclk
  RCwithSFC RC1_noclk annotation(
    Placement(visible = true, transformation(origin = {-128, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Vhi(y = 1.5)  annotation(
    Placement(visible = true, transformation(origin = {-170, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Vlo(y = 1)  annotation(
    Placement(visible = true, transformation(origin = {-170, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  RCwithSFC RC1_clk(Ts = 0.0005, useTs = true) annotation(
    Placement(visible = true, transformation(origin = {-128, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  RCwithSFC RC2_clk(Ts = 0.0005, useTs = true) annotation(
    Placement(visible = true, transformation(origin = {-90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  RCwithSFC RC2_noclk annotation(
    Placement(visible = true, transformation(origin = {-90, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(Vhi.y, RC1_noclk.Vhi) annotation(
    Line(points = {{-159, 56}, {-140, 56}}, color = {0, 0, 127}));
  connect(Vlo.y, RC1_noclk.Vlo) annotation(
    Line(points = {{-158, 30}, {-154, 30}, {-154, 44}, {-140, 44}}, color = {0, 0, 127}));
  connect(Vlo.y, RC1_clk.Vlo) annotation(
    Line(points = {{-158, 30}, {-154, 30}, {-154, 4}, {-140, 4}}, color = {0, 0, 127}));
  connect(Vhi.y, RC1_clk.Vhi) annotation(
    Line(points = {{-158, 56}, {-150, 56}, {-150, 16}, {-140, 16}}, color = {0, 0, 127}));
  connect(RC1_clk.Voh, RC2_clk.Vhi) annotation(
    Line(points = {{-116, 16}, {-102, 16}}, color = {0, 0, 127}));
  connect(RC1_clk.Vol, RC2_clk.Vlo) annotation(
    Line(points = {{-116, 4}, {-102, 4}}, color = {0, 0, 127}));
  connect(RC1_noclk.Voh, RC2_noclk.Vhi) annotation(
    Line(points = {{-116, 56}, {-102, 56}}, color = {0, 0, 127}));
  connect(RC1_noclk.Vol, RC2_noclk.Vlo) annotation(
    Line(points = {{-116, 44}, {-102, 44}}, color = {0, 0, 127}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    experiment(StartTime = 0, StopTime = 2, Tolerance = 1e-6, Interval = 0.0004),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end cascaded_RC_clk_noclk;
