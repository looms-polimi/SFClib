within SFC.Tests;

model StuckEx
  SFC.SFCelements.Step step annotation(
    Placement(visible = true, transformation(origin = {-20, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.InitialStepNI initialStepNI annotation(
    Placement(visible = true, transformation(origin = {-20, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition transition annotation(
    Placement(visible = true, transformation(origin = {-20, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step step1 annotation(
    Placement(visible = true, transformation(origin = {-20, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition transition1 annotation(
    Placement(visible = true, transformation(origin = {-20, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition transition2 annotation(
    Placement(visible = true, transformation(origin = {-20, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.FinalStep finalStep annotation(
    Placement(visible = true, transformation(origin = {-20, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition condition(y = time > 2)  annotation(
    Placement(visible = true, transformation(origin = {20, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Condition condition1(y = true)  annotation(
    Placement(visible = true, transformation(origin = {24, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition condition2(y = true) annotation(
    Placement(visible = true, transformation(origin = {28, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(initialStepNI.OUT, transition.IN) annotation(
    Line(points = {{-20, 62}, {-20, 62}, {-20, 46}, {-20, 46}}));
  connect(transition.OUT, step.IN) annotation(
    Line(points = {{-20, 42}, {-20, 28}}));
  connect(step.OUT, transition1.IN) annotation(
    Line(points = {{-20, 8}, {-20, -10}}));
  connect(transition1.OUT, step1.IN) annotation(
    Line(points = {{-20, -14}, {-20, -26}}));
  connect(step1.OUT, transition2.IN) annotation(
    Line(points = {{-20, -46}, {-20, -46}, {-20, -60}, {-20, -60}}));
  connect(transition2.OUT, finalStep.IN) annotation(
    Line(points = {{-20, -64}, {-20, -64}, {-20, -72}, {-20, -72}}));
  connect(transition.C, condition.y) annotation(
    Line(points = {{-8, 44}, {9, 44}, {9, 40}}, color = {255, 0, 255}));
  connect(condition1.y, transition1.C) annotation(
    Line(points = {{12, -24}, {-4, -24}, {-4, -12}, {-8, -12}, {-8, -12}}, color = {255, 0, 255}));
  connect(transition2.C, condition2.y) annotation(
    Line(points = {{-8, -62}, {18, -62}, {18, -62}, {18, -62}}, color = {255, 0, 255}));
end StuckEx;
