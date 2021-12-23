within SFC.Tests.TestActions;

model ActionsWithRegVar



extends SFC.SFCelements.ModelWithCyclicGroup(cyclicGroup.period = 0.5);
  SFC.SFCelements.Condition c02(y = S02.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-67, -50}, extent = {{-33, -12}, {33, 12}}, rotation = 0)));
  SFCelements.Transition T00_01 annotation(
    Placement(visible = true, transformation(origin = {-129, 77}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFCelements.Step S02 annotation(
    Placement(visible = true, transformation(origin = {-129, -19}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFCelements.Transition T01_02 annotation(
    Placement(visible = true, transformation(origin = {-129, 15}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.SFCelements.Condition c01(y = S01.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-65, 13}, extent = {{-33, -11}, {33, 11}}, rotation = 0)));
  SFCelements.Transition T03_00 annotation(
    Placement(visible = true, transformation(origin = {-129, -105}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFCelements.Step S01 annotation(
    Placement(visible = true, transformation(origin = {-129, 45}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFCelements.Step S03 annotation(
    Placement(visible = true, transformation(origin = {-129, -73}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFCelements.Step S00(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-129, 111}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  SFCelements.Transition T02_03 annotation(
    Placement(visible = true, transformation(origin = {-129, -47}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  SFC.SFCelements.Condition c03(y = S03.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-63, -107}, extent = {{-35, -11}, {35, 11}}, rotation = 0)));
  SFC.SFCelements.Condition c00(y = S00.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-68, 75}, extent = {{-32, -13}, {32, 13}}, rotation = 0)));
  SFCelements.VarRecord Rec1 annotation(
    Placement(visible = true, transformation(origin = {130, 120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S03.OUT, T03_00.IN) annotation(
    Line(points = {{-129, -84}, {-129, -102}}));
  connect(T01_02.C, c01.y) annotation(
    Line(points = {{-113.4, 15}, {-106.7, 15}, {-106.7, 13}, {-101, 13}}, color = {255, 0, 255}));
  connect(S00.OUT, T00_01.IN) annotation(
    Line(points = {{-129, 100}, {-129, 80}}));
  connect(S02.OUT, T02_03.IN) annotation(
    Line(points = {{-129, -30}, {-129, -44}}));
  connect(T03_00.OUT, S00.IN) annotation(
    Line(points = {{-129, -107.6}, {-137, -107.6}, {-137, -129.6}, {-175, -129.6}, {-175, 140.4}, {-129, 140.4}, {-129, 122.4}}));
  connect(T02_03.C, c02.y) annotation(
    Line(points = {{-113.4, -47}, {-103, -47}, {-103, -50}}, color = {255, 0, 255}));
  connect(T01_02.OUT, S02.IN) annotation(
    Line(points = {{-129, 12.4}, {-129, -7.6}}));
  connect(T03_00.C, c03.y) annotation(
    Line(points = {{-113.4, -105}, {-101.5, -105}, {-101.5, -107}}, color = {255, 0, 255}));
  connect(T00_01.OUT, S01.IN) annotation(
    Line(points = {{-129, 74.4}, {-129, 56.4}}));
  connect(S01.OUT, T01_02.IN) annotation(
    Line(points = {{-129, 34}, {-129, 18}}));
  connect(T02_03.OUT, S03.IN) annotation(
    Line(points = {{-129, -49.6}, {-129, -61.6}}));
  connect(T00_01.C, c00.y) annotation(
    Line(points = {{-113.4, 77}, {-108.2, 77}, {-108.2, 75}, {-103, 75}}, color = {255, 0, 255}));

algorithm 

when time>0.5 then 
SFC.Functions.set_realVar("d", 5);
    Modelica.Utilities.Streams.print(
             "*ACT*"
             +": action at t="
             +String(time));
//Rec1.d := 5;
end when; 

annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end ActionsWithRegVar;