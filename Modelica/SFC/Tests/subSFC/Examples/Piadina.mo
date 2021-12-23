within SFC.Tests.subSFC.Examples;

model Piadina

  SFC.SFCelements.InitialStep S0 annotation(
    Placement(visible = true, transformation(origin = {-90, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t1 annotation(
    Placement(visible = true, transformation(origin = {-90, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step ingr_prep annotation(
    Placement(visible = true, transformation(origin = {-90, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step cooking annotation(
    Placement(visible = true, transformation(origin = {-90, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step packing annotation(
    Placement(visible = true, transformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t2 annotation(
    Placement(visible = true, transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t3 annotation(
    Placement(visible = true, transformation(origin = {-90, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t4 annotation(
    Placement(visible = true, transformation(origin = {-90, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition prep_done(y = Sub_ingr_prep.y)  annotation(
    Placement(visible = true, transformation(origin = {-36, 21}, extent = {{-26, -9}, {26, 9}}, rotation = 0)));
  SFC.SFCelements.Condition start(y = S0.t > 2)  annotation(
    Placement(visible = true, transformation(origin = {-60, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition coocked(y = Sub_cooking.y)  annotation(
    Placement(visible = true, transformation(origin = {-60, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition packed(y = Sub_packing.y)  annotation(
    Placement(visible = true, transformation(origin = {-60, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action collect(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {-60, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action cook(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {-60, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action pack(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {-60, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Tests.subSFC.Utilities.sub_ingr_prep Sub_ingr_prep annotation(
    Placement(visible = true, transformation(origin = {-10, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Tests.subSFC.Utilities.sub_cooking Sub_cooking annotation(
    Placement(visible = true, transformation(origin = {-10, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Tests.subSFC.Utilities.sub_packing Sub_packing annotation(
    Placement(visible = true, transformation(origin = {-10, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(collect.actionBoolean, Sub_ingr_prep.u) annotation(
    Line(points = {{-50, 52}, {-20, 52}, {-20, 52}, {-18, 52}}, color = {255, 0, 255}));
  connect(cook.actionBoolean, Sub_cooking.u) annotation(
    Line(points = {{-50, -8}, {-18, -8}, {-18, -8}, {-18, -8}}, color = {255, 0, 255}));
  connect(pack.actionBoolean, Sub_packing.u) annotation(
    Line(points = {{-50, -68}, {-20, -68}, {-20, -68}, {-18, -68}}, color = {255, 0, 255}));
  connect(packing.X, pack.phase_active) annotation(
    Line(points = {{-78, -70}, {-70, -70}, {-70, -70}, {-70, -70}}, color = {255, 0, 255}));
  connect(cooking.X, cook.phase_active) annotation(
    Line(points = {{-78, -10}, {-70, -10}}, color = {255, 0, 255}));
  connect(ingr_prep.X, collect.phase_active) annotation(
    Line(points = {{-78, 50}, {-70, 50}}, color = {255, 0, 255}));
  connect(t3.C, coocked.y) annotation(
    Line(points = {{-78, -40}, {-70, -40}, {-70, -40}, {-72, -40}}, color = {255, 0, 255}));
  connect(t4.C, packed.y) annotation(
    Line(points = {{-78, -100}, {-70, -100}, {-70, -100}, {-72, -100}}, color = {255, 0, 255}));
  connect(t1.C, start.y) annotation(
    Line(points = {{-78, 80}, {-71, 80}}, color = {255, 0, 255}));
  connect(t2.C, prep_done.y) annotation(
    Line(points = {{-78, 20}, {-75, 20}, {-75, 21}, {-65, 21}}, color = {255, 0, 255}));
  connect(t4.OUT, S0.IN) annotation(
    Line(points = {{-90, -102}, {-90, -112}, {-120, -112}, {-120, 130}, {-90, 130}, {-90, 120}}));
  connect(packing.OUT, t4.IN) annotation(
    Line(points = {{-90, -80}, {-90, -80}, {-90, -98}, {-90, -98}}));
  connect(t3.OUT, packing.IN) annotation(
    Line(points = {{-90, -42}, {-90, -42}, {-90, -60}, {-90, -60}}));
  connect(cooking.OUT, t3.IN) annotation(
    Line(points = {{-90, -20}, {-90, -20}, {-90, -36}, {-90, -36}, {-90, -38}}));
  connect(t2.OUT, cooking.IN) annotation(
    Line(points = {{-90, 18}, {-90, 18}, {-90, 0}, {-90, 0}}));
  connect(ingr_prep.OUT, t2.IN) annotation(
    Line(points = {{-90, 40}, {-90, 40}, {-90, 22}, {-90, 22}}));
  connect(t1.OUT, ingr_prep.IN) annotation(
    Line(points = {{-90, 78}, {-90, 78}, {-90, 60}, {-90, 60}}));
  connect(S0.OUT, t1.IN) annotation(
    Line(points = {{-90, 100}, {-90, 100}, {-90, 82}, {-90, 82}}));
  annotation(
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-6, Interval = 0.2));

end Piadina;
