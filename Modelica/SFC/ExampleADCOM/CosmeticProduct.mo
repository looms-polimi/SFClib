within SFC.ExampleADCOM;

model CosmeticProduct
  SFC.SFCelements.Step DryingProc annotation(
    Placement(visible = true, transformation(origin = {-89, -171}, extent = {{-31, -31}, {31, 31}}, rotation = 0)));
  SFC.SFCelements.Step BulkInj annotation(
    Placement(visible = true, transformation(origin = {-90, -70}, extent = {{-30, -30}, {30, 30}}, rotation = 0)));
  SFC.SFCelements.Action collect(qualifierType = SFC.Types.Qualifier.P) annotation(
    Placement(visible = true, transformation(origin = {2, 50}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
  SFC.Tests.subSFC.Utilities.sub_packing Sub_packing annotation(
    Placement(visible = true, transformation(origin = {161, -179}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  SFC.SFCelements.Step BulkProd annotation(
    Placement(visible = true, transformation(origin = {-90, 36}, extent = {{-30, -30}, {30, 30}}, rotation = 0)));
  SFC.SFCelements.Transition t1 annotation(
    Placement(visible = true, transformation(origin = {-90, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition prep_done(y = Sub_ingr_prep.y) annotation(
    Placement(visible = true, transformation(origin = {32, -16}, extent = {{-70, -22}, {70, 22}}, rotation = 0)));
  SFC.Tests.subSFC.Utilities.sub_cooking Sub_cooking annotation(
    Placement(visible = true, transformation(origin = {170, -84}, extent = {{-28, -28}, {28, 28}}, rotation = 0)));
  SFC.SFCelements.Condition start(y = start) annotation(
    Placement(visible = true, transformation(origin = {14, 79}, extent = {{-48, -21}, {48, 21}}, rotation = 0)));
  SFC.SFCelements.Action cook(qualifierType = SFC.Types.Qualifier.P) annotation(
    Placement(visible = true, transformation(origin = {-3, -71}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  SFC.SFCelements.Condition packed(y = Sub_packing.y) annotation(
    Placement(visible = true, transformation(origin = {-48, -220}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t3 annotation(
    Placement(visible = true, transformation(origin = {-90, -124}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t2 annotation(
    Placement(visible = true, transformation(origin = {-90, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action pack(qualifierType = SFC.Types.Qualifier.P) annotation(
    Placement(visible = true, transformation(origin = {-6, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Tests.subSFC.Utilities.sub_ingr_prep Sub_ingr_prep annotation(
    Placement(visible = true, transformation(origin = {159, 51}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  SFC.SFCelements.Transition t4 annotation(
    Placement(visible = true, transformation(origin = {-90, -218}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition coocked(y = Sub_cooking.y) annotation(
    Placement(visible = true, transformation(origin = {30, -123}, extent = {{-60, -25}, {60, 25}}, rotation = 0)));
  SFC.SFCelements.InitialStepNI InitalState annotation(
    Placement(visible = true, transformation(origin = {-90, 130}, extent = {{-30, -30}, {30, 30}}, rotation = 0)));
equation
  connect(t3.OUT, DryingProc.IN) annotation(
    Line(points = {{-90, -126}, {-90, -133}, {-89, -133}, {-89, -140}}));
  connect(BulkInj.OUT, t3.IN) annotation(
    Line(points = {{-90, -100}, {-90, -122}}));
  connect(t4.C, packed.y) annotation(
    Line(points = {{-78, -218}, {-59, -218}, {-59, -220}}, color = {255, 0, 255}));
  connect(t2.C, prep_done.y) annotation(
    Line(points = {{-78, -16}, {-45, -16}}, color = {255, 0, 255}));
  connect(cook.actionBoolean, Sub_cooking.u) annotation(
    Line(points = {{27, -66}, {94.5, -66}, {94.5, -84}, {148, -84}}, color = {255, 0, 255}));
  connect(pack.actionBoolean, Sub_packing.u) annotation(
    Line(points = {{6, -168}, {75, -168}, {75, -179}, {146, -179}}, color = {255, 0, 255}));
  connect(BulkProd.X, collect.phase_active) annotation(
    Line(points = {{-54, 36}, {-39.5, 36}, {-39.5, 50}, {-29, 50}}, color = {255, 0, 255}));
  connect(t1.OUT, BulkProd.IN) annotation(
    Line(points = {{-90, 78}, {-90, 66}}));
  connect(collect.actionBoolean, Sub_ingr_prep.u) annotation(
    Line(points = {{33, 55}, {89.5, 55}, {89.5, 51}, {141, 51}}, color = {255, 0, 255}));
  connect(t3.C, coocked.y) annotation(
    Line(points = {{-78, -124}, {-62, -124}, {-62, -123}, {-36, -123}}, color = {255, 0, 255}));
  connect(BulkInj.X, cook.phase_active) annotation(
    Line(points = {{-54, -70}, {-52, -70}, {-52, -71}, {-33, -71}}, color = {255, 0, 255}));
  connect(BulkProd.OUT, t2.IN) annotation(
    Line(points = {{-90, 6}, {-90, -14}}));
  connect(DryingProc.OUT, t4.IN) annotation(
    Line(points = {{-89, -202}, {-89, -217}, {-90, -217}, {-90, -216}}));
  connect(t2.OUT, BulkInj.IN) annotation(
    Line(points = {{-90, -18}, {-90, -40}}));
  connect(DryingProc.X, pack.phase_active) annotation(
    Line(points = {{-52, -171}, {-40, -171}, {-40, -170}, {-18, -170}}, color = {255, 0, 255}));
  connect(t1.C, start.y) annotation(
    Line(points = {{-78, 80}, {-58.5, 80}, {-58.5, 79}, {-39, 79}}, color = {255, 0, 255}));
  connect(t1.IN, InitalState.OUT) annotation(
    Line(points = {{-90, 82}, {-90, 100}}));

annotation(
    Diagram,
    Icon);
end CosmeticProduct;
