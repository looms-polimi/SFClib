within FromSFCLib.subSFC.Utilities;
model sub_packing

extends SFC.Interfaces.subSystem;
  SFC.BasicBlocks.InitialStep idle annotation(
    Placement(visible = true, transformation(origin = {10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step fold annotation(
    Placement(visible = true, transformation(origin = {10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step wrap annotation(
    Placement(visible = true, transformation(origin = {10, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step packed annotation(
    Placement(visible = true, transformation(origin = {10, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t1 annotation(
    Placement(visible = true, transformation(origin = {10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t2 annotation(
    Placement(visible = true, transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t3 annotation(
    Placement(visible = true, transformation(origin = {10, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t4 annotation(
    Placement(visible = true, transformation(origin = {10, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c1(y = u)  annotation(
    Placement(visible = true, transformation(origin = {44, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c2(y = fold.t > 1)  annotation(
    Placement(visible = true, transformation(origin = {44, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c3(y = wrap.t > 15)  annotation(
    Placement(visible = true, transformation(origin = {44, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c4(y = true)  annotation(
    Placement(visible = true, transformation(origin = {44, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action end_pack(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {44, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(end_pack.actionBoolean, y) annotation(
    Line(points = {{54, -58}, {70, -58}, {70, 0}, {100, 0}, {100, 0}}, color = {255, 0, 255}));
  connect(packed.X, end_pack.phase_active) annotation(
    Line(points = {{22, -60}, {34, -60}, {34, -60}, {34, -60}}, color = {255, 0, 255}));
  connect(t4.C, c4.y) annotation(
    Line(points = {{22, -80}, {32, -80}, {32, -80}, {32, -80}}, color = {255, 0, 255}));
  connect(t3.C, c3.y) annotation(
    Line(points = {{22, -40}, {34, -40}, {34, -40}, {32, -40}}, color = {255, 0, 255}));
  connect(t2.C, c2.y) annotation(
    Line(points = {{22, 0}, {34, 0}, {34, 0}, {32, 0}}, color = {255, 0, 255}));
  connect(t1.C, c1.y) annotation(
    Line(points = {{22, 40}, {34, 40}, {34, 40}, {32, 40}}, color = {255, 0, 255}));
  connect(t4.OUT, idle.IN) annotation(
    Line(points = {{10, -82}, {10, -82}, {10, -92}, {-20, -92}, {-20, 80}, {10, 80}, {10, 70}, {10, 70}}));
  connect(t4.IN, packed.OUT) annotation(
    Line(points = {{10, -78}, {10, -78}, {10, -70}, {10, -70}}));
  connect(t3.OUT, packed.IN) annotation(
    Line(points = {{10, -42}, {10, -42}, {10, -50}, {10, -50}}));
  connect(wrap.OUT, t3.IN) annotation(
    Line(points = {{10, -30}, {10, -30}, {10, -38}, {10, -38}}));
  connect(t2.OUT, wrap.IN) annotation(
    Line(points = {{10, -2}, {10, -2}, {10, -10}, {10, -10}}));
  connect(fold.OUT, t2.IN) annotation(
    Line(points = {{10, 10}, {10, 10}, {10, 2}, {10, 2}}));
  connect(t1.OUT, fold.IN) annotation(
    Line(points = {{10, 38}, {10, 38}, {10, 30}, {10, 30}}));
  connect(idle.OUT, t1.IN) annotation(
    Line(points = {{10, 50}, {10, 50}, {10, 42}, {10, 42}}));
end sub_packing;