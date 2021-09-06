within SFC.Lab_2021.DevelTrials;

model foo
  SFC.Lab_2021.ProcessComponents.fixed_pT snk_p(p = 0)  annotation(
    Placement(visible = true, transformation(origin = {80, 0}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.Lab_2021.ProcessComponents.Tank_freesurface_jacketed_insulated T(Sbase = 0.5, lstart = 1) annotation(
    Placement(visible = true, transformation(origin = {-16, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Lab_2021.ProcessComponents.dp_qua_opPoint dpout(dpnom = 9810, wnom = 10)  annotation(
    Placement(visible = true, transformation(origin = {32, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Lab_2021.ProcessComponents.prescribed_wT src annotation(
    Placement(visible = true, transformation(origin = {-52, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression win(y = if sin(0.1 * time) > 0.95 then 20 else 0)  annotation(
    Placement(visible = true, transformation(origin = {-90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Tin(y = 273.15 + 20)  annotation(
    Placement(visible = true, transformation(origin = {-90, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T.pwh_b, dpout.pwh_a) annotation(
    Line(points = {{-4, 0}, {20, 0}}));
  connect(dpout.pwh_b, snk_p.pwh_a) annotation(
    Line(points = {{44, 0}, {68, 0}}));
  connect(src.pwh_a, T.pwh_a) annotation(
    Line(points = {{-40, 0}, {-28, 0}}));
  connect(win.y, src.w) annotation(
    Line(points = {{-78, 10}, {-70, 10}, {-70, 4}, {-64, 4}}, color = {0, 0, 127}));
  connect(Tin.y, src.T) annotation(
    Line(points = {{-78, -14}, {-72, -14}, {-72, -6}, {-64, -6}}, color = {0, 0, 127}));  protected
  annotation(
    experiment(StartTime = 0, StopTime = 500, Tolerance = 1e-8, Interval = 0.1),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end foo;