within SFC.Tests.subSFC.Utilities;
model sub_ingr_prep
  Modelica.Blocks.Interfaces.BooleanInput u annotation(
    Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation(
    Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition tsub5 annotation(
    Placement(visible = true, transformation(origin = {8, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition end_collecting(y = true)  annotation(
    Placement(visible = true, transformation(origin = {40, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step ingr_READY annotation(
    Placement(visible = true, transformation(origin = {8, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action ingr_ready(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {40, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition tsub4 annotation(
    Placement(visible = true, transformation(origin = {8, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition got_oil(y = oil.t > 2)  annotation(
    Placement(visible = true, transformation(origin = {40, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition got_flour(y = flour.t > 3)  annotation(
    Placement(visible = true, transformation(origin = {40, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition got_water(y = water.t > 7)  annotation(
    Placement(visible = true, transformation(origin = {40, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition start_collecting(y = u)  annotation(
    Placement(visible = true, transformation(origin = {40, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step oil annotation(
    Placement(visible = true, transformation(origin = {8, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition tsub3 annotation(
    Placement(visible = true, transformation(origin = {8, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step water annotation(
    Placement(visible = true, transformation(origin = {8, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition tsub2 annotation(
    Placement(visible = true, transformation(origin = {8, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step flour annotation(
    Placement(visible = true, transformation(origin = {8, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.InitialStep initialization annotation(
    Placement(visible = true, transformation(origin = {8, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition tsub1 annotation(
    Placement(visible = true, transformation(origin = {8, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(tsub5.OUT, initialization.IN) annotation(
    Line(points = {{8, -96}, {8, -100}, {-22, -100}, {-22, 100}, {8, 100}, {8, 96}}));
  connect(tsub1.C, start_collecting.y) annotation(
    Line(points = {{20, 66}, {24, 66}, {24, 66}, {28, 66}, {28, 66}, {28, 66}}, color = {255, 0, 255}));
  connect(tsub1.OUT, flour.IN) annotation(
    Line(points = {{8, 64}, {8, 56}}));
  connect(initialization.OUT, tsub1.IN) annotation(
    Line(points = {{8, 76}, {8, 68}}));
  connect(flour.OUT, tsub2.IN) annotation(
    Line(points = {{8, 36}, {8, 28}}));
  connect(tsub2.C, got_flour.y) annotation(
    Line(points = {{20, 26}, {29, 26}}, color = {255, 0, 255}));
  connect(tsub2.OUT, water.IN) annotation(
    Line(points = {{8, 24}, {8, 14}}));
  connect(water.OUT, tsub3.IN) annotation(
    Line(points = {{8, -4}, {8, -12}}));
  connect(tsub3.C, got_water.y) annotation(
    Line(points = {{20, -14}, {30, -14}, {30, -14}, {29, -14}, {29, -14}, {28.5, -14}, {28.5, -14}, {28, -14}}, color = {255, 0, 255}));
  connect(tsub3.OUT, oil.IN) annotation(
    Line(points = {{8, -16}, {8, -24}}));
  connect(oil.OUT, tsub4.IN) annotation(
    Line(points = {{8, -44}, {8, -52}}));
  connect(tsub4.C, got_oil.y) annotation(
    Line(points = {{20, -54}, {24, -54}, {24, -54}, {28, -54}, {28, -54}, {28, -54}, {28, -54}, {28, -54}}, color = {255, 0, 255}));
  connect(tsub4.OUT, ingr_READY.IN) annotation(
    Line(points = {{8, -56}, {8, -64}}));
  connect(ingr_ready.actionBoolean, y) annotation(
    Line(points = {{50, -72}, {74, -72}, {74, 0}, {100, 0}}, color = {255, 0, 255}));
  connect(ingr_READY.X, ingr_ready.phase_active) annotation(
    Line(points = {{20, -74}, {25, -74}, {25, -74}, {30, -74}, {30, -74}, {30, -74}, {30, -74}, {30, -74}}, color = {255, 0, 255}));
  connect(ingr_READY.OUT, tsub5.IN) annotation(
    Line(points = {{8, -84}, {8, -92}}));
  connect(tsub5.C, end_collecting.y) annotation(
    Line(points = {{20, -94}, {22.5, -94}, {22.5, -94}, {25, -94}, {25, -94}, {30, -94}, {30, -94}, {29, -94}, {29, -94}, {28.5, -94}, {28.5, -94}, {28, -94}}, color = {255, 0, 255}));
  annotation(
    Icon(graphics = {Rectangle(fillColor = {251, 255, 251}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {3, 1}, extent = {{-55, 35}, {57, -39}}, textString = "%name")}),
    uses(Modelica(version = "3.2.3")));

end sub_ingr_prep;