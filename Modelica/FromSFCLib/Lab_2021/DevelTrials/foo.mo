within FromSFCLib.Lab_2021.DevelTrials;

model foo
  SFC.Lab_2021.ProcessComponents.fixed_pT snk_p(redeclare model Liquid=Media.LiquidWater,p = 0)  annotation(
    Placement(visible = true, transformation(origin = {80, 0}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.Lab_2021.ProcessComponents.dp_qua_opPoint dpout(dpnom = 9810, wnom = 10)  annotation(
    Placement(visible = true, transformation(origin = {32, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Lab_2021.ProcessComponents.prescribed_wT src(redeclare model Liquid=Media.LiquidWater) annotation(
    Placement(visible = true, transformation(origin = {-52, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression win(y = (if sin(0.1 * time) > 0.95 then 20 else 0) + (if time > 100 and time < 120 then 100 else 0))  annotation(
    Placement(visible = true, transformation(origin = {-90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Tin(y = 273.15 + 20)  annotation(
    Placement(visible = true, transformation(origin = {-90, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Qh(y = if time < 200 then 0 else 0) annotation(
    Placement(visible = true, transformation(origin = {-84, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Qheat annotation(
    Placement(visible = true, transformation(origin = {-42, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature Ta(T = 273.15 + 20)  annotation(
    Placement(visible = true, transformation(origin = {56, -48}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Ga(G = 25)  annotation(
    Placement(visible = true, transformation(origin = {10, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(dpout.pwh_b, snk_p.pwh_a) annotation(
    Line(points = {{44, 0}, {68, 0}}));
  connect(win.y, src.w) annotation(
    Line(points = {{-78, 10}, {-70, 10}, {-70, 4}, {-64, 4}}, color = {0, 0, 127}));
  connect(Tin.y, src.T) annotation(
    Line(points = {{-78, -14}, {-72, -14}, {-72, -6}, {-64, -6}}, color = {0, 0, 127}));
  connect(Qh.y, Qheat.Q_flow) annotation(
    Line(points = {{-72, -48}, {-52, -48}}, color = {0, 0, 127}));
  connect(Ga.port_b, Ta.port) annotation(
    Line(points = {{20, -48}, {46, -48}}, color = {191, 0, 0}));
protected
  annotation(
    experiment(StartTime = 0, StopTime = 500, Tolerance = 1e-8, Interval = 0.1),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl", emit_protected = "()"));
end foo;