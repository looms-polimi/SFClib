within SFC.Tests.subSFC.Utilities;
model sub_cooking
  extends SFC.Interfaces.subSystem;
  SFC.BasicBlocks.InitialStep idle annotation(
    Placement(visible = true, transformation(origin = {0, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step piadina_in annotation(
    Placement(visible = true, transformation(origin = {0, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step wait annotation(
    Placement(visible = true, transformation(origin = {0, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step piadina_out annotation(
    Placement(visible = true, transformation(origin = {0, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t1 annotation(
    Placement(visible = true, transformation(origin = {0, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t2 annotation(
    Placement(visible = true, transformation(origin = {0, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t3 annotation(
    Placement(visible = true, transformation(origin = {0, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition t4 annotation(
    Placement(visible = true, transformation(origin = {0, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c1(y = u)  annotation(
    Placement(visible = true, transformation(origin = {30, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c2(y = piadina_in.t > 3)  annotation(
    Placement(visible = true, transformation(origin = {30, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c3(y = wait.t > 60)  annotation(
    Placement(visible = true, transformation(origin = {30, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition c4(y = true)  annotation(
    Placement(visible = true, transformation(origin = {30, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action end_cooking(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {30, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(piadina_out.X, end_cooking.phase_active) annotation(
    Line(points = {{12, -54}, {20, -54}, {20, -54}, {20, -54}}, color = {255, 0, 255}));
  connect(end_cooking.actionBoolean, y) annotation(
    Line(points = {{40, -52}, {76, -52}, {76, 0}, {100, 0}}, color = {255, 0, 255}));
  connect(t4.C, c4.y) annotation(
    Line(points = {{12, -74}, {20, -74}, {20, -74}, {19, -74}, {19, -74}, {18, -74}}, color = {255, 0, 255}));
  connect(t3.C, c3.y) annotation(
    Line(points = {{12, -34}, {15, -34}, {15, -34}, {18, -34}, {18, -34}, {18, -34}, {18, -34}, {18, -34}}, color = {255, 0, 255}));
  connect(c2.y, t2.C) annotation(
    Line(points = {{19, 6}, {16, 6}, {16, 6}, {13, 6}, {13, 6}, {13, 6}, {13, 6}, {13, 6}}, color = {255, 0, 255}));
  connect(t1.C, c1.y) annotation(
    Line(points = {{12, 46}, {15, 46}, {15, 46}, {18, 46}, {18, 46}, {18, 46}}, color = {255, 0, 255}));
  connect(piadina_out.OUT, t4.IN) annotation(
    Line(points = {{0, -64}, {0, -64}, {0, -64}, {0, -64}, {0, -72}, {0, -72}}));
  connect(t4.OUT, idle.IN) annotation(
    Line(points = {{3.55271e-16, -76}, {3.55271e-16, -76}, {3.55271e-16, -76}, {-8.88182e-17, -76}, {-8.88182e-17, -90}, {-40, -90}, {-40, 84}, {-8.88182e-17, 84}, {-8.88182e-17, 76}, {3.55271e-16, 76}, {3.55271e-16, 76}, {3.55271e-16, 76}}));
  connect(wait.OUT, t3.IN) annotation(
    Line(points = {{0, -24}, {0, -24}, {0, -24}, {0, -24}, {0, -32}, {0, -32}}));
  connect(t3.OUT, piadina_out.IN) annotation(
    Line(points = {{3.55271e-16, -36}, {3.55271e-16, -36}, {3.55271e-16, -44}, {3.55271e-16, -44}}));
  connect(piadina_in.OUT, t2.IN) annotation(
    Line(points = {{0, 16}, {0, 16}, {0, 16}, {0, 16}, {0, 8}, {0, 8}, {0, 8}, {0, 8}}));
  connect(t2.OUT, wait.IN) annotation(
    Line(points = {{3.55271e-16, 4}, {3.55271e-16, 4}, {3.55271e-16, -4}, {3.55271e-16, -4}}));
  connect(idle.OUT, t1.IN) annotation(
    Line(points = {{0, 56}, {0, 56}, {0, 48}, {0, 48}, {0, 48}, {0, 48}}));
  connect(t1.OUT, piadina_in.IN) annotation(
    Line(points = {{3.55271e-16, 44}, {3.55271e-16, 44}, {3.55271e-16, 36}, {3.55271e-16, 36}}));
  annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {10, 1}, extent = {{-66, 31}, {66, -31}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)));
end sub_cooking;