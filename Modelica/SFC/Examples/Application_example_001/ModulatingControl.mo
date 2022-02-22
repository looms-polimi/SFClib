within SFC.Examples.Application_example_001;

model ModulatingControl
  SFC.SFCio.Read_real read_real(variable_name = "Tank_bulk_T") annotation(
    Placement(visible = true, transformation(origin = {-99, 14}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Write_real write_real(variable_name = "cmd_heater_bulk") annotation(
    Placement(visible = true, transformation(origin = {23, 39}, extent = {{-24, -12}, {24, 12}}, rotation = 0)));
  Modelica.Blocks.Continuous.LimPID C(Ti = 500, controllerType = Modelica.Blocks.Types.SimpleController.PI, k = 0.2, limitsAtInit = true, yMax = 1, yMin = 0) annotation(
    Placement(visible = true, transformation(origin = {-33, 39}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression spTbulk(y = 273.15 + 30) annotation(
    Placement(visible = true, transformation(origin = {-110, 39}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(C.y, write_real.u) annotation(
    Line(points = {{-22, 39}, {-3, 39}}, color = {0, 0, 127}));
  connect(C.u_m, read_real.y) annotation(
    Line(points = {{-33, 27}, {-33, 14}, {-77, 14}}, color = {0, 0, 127}));
  connect(spTbulk.y, C.u_s) annotation(
    Line(points = {{-99, 39}, {-45, 39}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-200, -100}, {200, 100}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(fillColor = {78, 154, 6}, extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {19, 134, 9}, fillColor = {200, 251, 173}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {-0.5, 0}, lineColor = {19, 134, 9}, fillColor = {78, 154, 6}, extent = {{-98, 99}, {99, -99}}, textString = "MC")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-6, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end ModulatingControl;