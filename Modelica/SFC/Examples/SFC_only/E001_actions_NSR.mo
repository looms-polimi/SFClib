within SFC.Examples.SFC_only;

model E001_actions_NSR
  extends Modelica.Icons.Example;
  Real N = Functions.bool_to_int_with_offset(S11.X, 5);
  Real S = Functions.bool_to_int_with_offset(S21.X, 3.5);
  Real R = Functions.bool_to_int_with_offset(S31.X, 2);
  Real A = Functions.bool_to_int_with_offset(rb1.y, 0.5);
  inner SFC.SFCelements.CyclicGroup cyclicGroup(period = 0.5) annotation(
    Placement(visible = true, transformation(origin = {-190, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S10(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-150, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S20(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-30, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S21 annotation(
    Placement(visible = true, transformation(origin = {-30, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S11 annotation(
    Placement(visible = true, transformation(origin = {-150, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S30(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {90, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S31 annotation(
    Placement(visible = true, transformation(origin = {90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T101 annotation(
    Placement(visible = true, transformation(origin = {-150, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T110 annotation(
    Placement(visible = true, transformation(origin = {-150, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Transition T201 annotation(
    Placement(visible = true, transformation(origin = {-30, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T210 annotation(
    Placement(visible = true, transformation(origin = {-30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T301 annotation(
    Placement(visible = true, transformation(origin = {90, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T310 annotation(
    Placement(visible = true, transformation(origin = {90, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c101(y = S10.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-100, 100}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c110(y = S11.t > 1.5) annotation(
    Placement(visible = true, transformation(origin = {-100, 40}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c201(y = S20.t > 5) annotation(
    Placement(visible = true, transformation(origin = {20, 100}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c210(y = S21.t > 5) annotation(
    Placement(visible = true, transformation(origin = {20, 40}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c301(y = S30.t > 12) annotation(
    Placement(visible = true, transformation(origin = {140, 100}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression c310(y = S31.t > 10) annotation(
    Placement(visible = true, transformation(origin = {140, 40}, extent = {{20, -10}, {-20, 10}}, rotation = 0)));
  SFC.SFCelements.N_action an1 annotation(
    Placement(visible = true, transformation(origin = {-100, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.S_action as1 annotation(
    Placement(visible = true, transformation(origin = {20, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCelements.R_action ar1 annotation(
    Placement(visible = true, transformation(origin = {140, 70}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean rb1(variable_name = "action1")  annotation(
    Placement(visible = true, transformation(origin = {-140, 190}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
equation
  connect(S20.OUT, T201.IN) annotation(
    Line(points = {{-30, 120}, {-30, 102}}));
  connect(S30.OUT, T301.IN) annotation(
    Line(points = {{90, 120}, {90, 102}}));
  connect(T301.OUT, S31.IN) annotation(
    Line(points = {{90, 98}, {90, 80}}));
  connect(S31.OUT, T310.IN) annotation(
    Line(points = {{90, 60}, {90, 42}}));
  connect(S21.OUT, T210.IN) annotation(
    Line(points = {{-30, 60}, {-30, 42}}));
  connect(S10.OUT, T101.IN) annotation(
    Line(points = {{-150, 120}, {-150, 102}}));
  connect(T101.OUT, S11.IN) annotation(
    Line(points = {{-150, 98}, {-150, 80}}));
  connect(S11.OUT, T110.IN) annotation(
    Line(points = {{-150, 60}, {-150, 42}}));
  connect(T110.OUT, S10.IN) annotation(
    Line(points = {{-150, 38}, {-150, 20}, {-180, 20}, {-180, 160}, {-150, 160}, {-150, 140}}));
  connect(T201.OUT, S21.IN) annotation(
    Line(points = {{-30, 98}, {-30, 80}}));
  connect(T210.OUT, S20.IN) annotation(
    Line(points = {{-30, 38}, {-30, 20}, {-60, 20}, {-60, 160}, {-30, 160}, {-30, 140}}));
  connect(T310.OUT, S30.IN) annotation(
    Line(points = {{90, 38}, {90, 20}, {60, 20}, {60, 160}, {90, 160}, {90, 140}}));
  connect(T101.C, c101.y) annotation(
    Line(points = {{-138, 100}, {-122, 100}}, color = {255, 0, 255}));
  connect(T110.C, c110.y) annotation(
    Line(points = {{-138, 40}, {-122, 40}}, color = {255, 0, 255}));
  connect(T201.C, c201.y) annotation(
    Line(points = {{-18, 100}, {-2, 100}}, color = {255, 0, 255}));
  connect(T210.C, c210.y) annotation(
    Line(points = {{-18, 40}, {-2, 40}}, color = {255, 0, 255}));
  connect(T301.C, c301.y) annotation(
    Line(points = {{102, 100}, {118, 100}}, color = {255, 0, 255}));
  connect(T310.C, c310.y) annotation(
    Line(points = {{102, 40}, {118, 40}}, color = {255, 0, 255}));
  connect(S11.X, an1.phase_active) annotation(
    Line(points = {{-138, 70}, {-122, 70}}, color = {255, 0, 255}));
  connect(S21.X, as1.phase_active) annotation(
    Line(points = {{-18, 70}, {-2, 70}}, color = {255, 0, 255}));
  connect(S31.X, ar1.phase_active) annotation(
    Line(points = {{102, 70}, {118, 70}}, color = {255, 0, 255}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div>The two SFC evolve indipendently following the same cyclic group period.&nbsp;</div><div>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 30, Tolerance = 1e-6, Interval = 0.06),
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end E001_actions_NSR;