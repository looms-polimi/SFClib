within SFC.DiscreteEventSys.DiscreteBlocks;


model MachineStates
  Branching.AlternativeJoin3 alternativeJoin3Fault annotation(
    Placement(visible = true, transformation(origin = {91, 21}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  SFCelements.Transition EW annotation(
    Placement(visible = true, transformation(origin = {1, 39}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFCelements.Transition EF annotation(
    Placement(visible = true, transformation(origin = {91, 39}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFCelements.Transition WF annotation(
    Placement(visible = true, transformation(origin = {41, -53}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFCelements.Step F annotation(
    Placement(visible = true, transformation(origin = {106, -2}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.Branching.AlternativeJoin2 alternativeJoin3Working annotation(
    Placement(visible = true, transformation(origin = {5, 23}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
  SFC.SFCelements.Step W annotation(
    Placement(visible = true, transformation(origin = {-4, 2}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFCelements.InitialStep E annotation(
    Placement(visible = true, transformation(origin = {0, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Transition WI annotation(
    Placement(visible = true, transformation(origin = {-15, -33}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFC.SFCelements.Transition EI annotation(
    Placement(visible = true, transformation(origin = {-93, 43}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  Branching.AlternativeJoin3 alternativeJoin3 annotation(
    Placement(visible = true, transformation(origin = {13, -83}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Branching.AlternativeSplit3 alternativeSplit31 annotation(
    Placement(visible = true, transformation(origin = {-79, -19}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFCelements.Transition IW annotation(
    Placement(visible = true, transformation(origin = {-53, -51}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFC.SFCelements.Transition FE annotation(
    Placement(visible = true, transformation(origin = {107, -31}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFCelements.Transition IF annotation(
    Placement(visible = true, transformation(origin = {-79, -41}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFCelements.Transition WE annotation(
    Placement(visible = true, transformation(origin = {13, -43}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  SFCelements.Transition IE annotation(
    Placement(visible = true, transformation(origin = {-107, -33}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  Branching.AlternativeJoin2 alternativeJoinIdle annotation(
    Placement(visible = true, transformation(origin = {-78, 22}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  SFC.Branching.AlternativeSplit3 alternativeSplit3 annotation(
    Placement(visible = true, transformation(origin = {0, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Step I annotation(
    Placement(visible = true, transformation(origin = {-78, 0}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Branching.AlternativeSplit3 alternativeSplit32 annotation(
    Placement(visible = true, transformation(origin = {13, -19}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput cond_EI annotation(
    Placement(visible = true, transformation(origin = {-191, 83}, extent = {{-11, -11}, {11, 11}}, rotation = 0), iconTransformation(origin = {-113, 99}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput cond_EW annotation(
    Placement(visible = true, transformation(origin = {-190, 56}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-112, 72}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput cond_EF annotation(
    Placement(visible = true, transformation(origin = {-75, -125}, extent = {{-13, -13}, {13, 13}}, rotation = 90), iconTransformation(origin = {-53, -113}, extent = {{-13, -13}, {13, 13}}, rotation = 90)));
  Modelica.Blocks.Interfaces.BooleanInput cond_IE annotation(
    Placement(visible = true, transformation(origin = {-191, 9}, extent = {{-13, -13}, {13, 13}}, rotation = 0), iconTransformation(origin = {-113, 25}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput cond_WI annotation(
    Placement(visible = true, transformation(origin = {-191, -85}, extent = {{-13, -13}, {13, 13}}, rotation = 0), iconTransformation(origin = {-113, -49}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput cond_IW annotation(
    Placement(visible = true, transformation(origin = {-191, -19}, extent = {{-13, -13}, {13, 13}}, rotation = 0), iconTransformation(origin = {-113, -3}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput cond_WE annotation(
    Placement(visible = true, transformation(origin = {-191, -109}, extent = {{-13, -13}, {13, 13}}, rotation = 0), iconTransformation(origin = {-113, -79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput cond_IF annotation(
    Placement(visible = true, transformation(origin = {-47, -125}, extent = {{-13, -13}, {13, 13}}, rotation = 90), iconTransformation(origin = {-25, -113}, extent = {{-13, -13}, {13, 13}}, rotation = 90)));
  Modelica.Blocks.Interfaces.BooleanInput cond_WF annotation(
    Placement(visible = true, transformation(origin = {-17, -125}, extent = {{-13, -13}, {13, 13}}, rotation = 90), iconTransformation(origin = {5, -113}, extent = {{-13, -13}, {13, 13}}, rotation = 90)));
  Modelica.Blocks.Interfaces.BooleanInput cond_FE annotation(
    Placement(visible = true, transformation(origin = {45, -125}, extent = {{-13, -13}, {13, 13}}, rotation = 90), iconTransformation(origin = {67, -113}, extent = {{-13, -13}, {13, 13}}, rotation = 90)));
  Modelica.Blocks.Interfaces.BooleanOutput Energy_mode annotation(
    Placement(visible = true, transformation(origin = {190, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput Idle_mode annotation(
    Placement(visible = true, transformation(origin = {190, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput Working_mode annotation(
    Placement(visible = true, transformation(origin = {190, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput Fault_mode annotation(
    Placement(visible = true, transformation(origin = {190, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(WE.OUT, alternativeJoin3.IN2) annotation(
    Line(points = {{14, -44}, {14, -44}, {14, -82}, {14, -82}}));
  connect(alternativeSplit32.OUT3, WI.IN) annotation(
    Line(points = {{-16, -18}, {-16, -32}, {-15, -32}}));
  connect(alternativeSplit31.OUT3, IW.IN) annotation(
    Line(points = {{-51, -19}, {-51, -50}, {-53, -50}}));
  connect(alternativeJoin3.OUT, E.IN) annotation(
    Line(points = {{14, -82}, {12, -82}, {12, -102}, {-156, -102}, {-156, 98}, {0, 98}, {0, 92}}));
  connect(WF.OUT, alternativeJoin3Fault.IN2) annotation(
    Line(points = {{42, -54}, {42, -54}, {42, -62}, {66, -62}, {66, 26}, {92, 26}, {92, 22}, {92, 22}}));
  connect(EI.OUT, alternativeJoinIdle.IN1) annotation(
    Line(points = {{-93, 42}, {-93, 30.5}, {-94, 30.5}, {-94, 23}}));
  connect(EF.OUT, alternativeJoin3Fault.IN3) annotation(
    Line(points = {{92, 38}, {92, 38}, {92, 30}, {112, 30}, {112, 22}, {112, 22}}));
  connect(WI.OUT, alternativeJoinIdle.IN2) annotation(
    Line(points = {{-14, -34}, {-14, -36}, {-44, -36}, {-44, 30}, {-60, 30}, {-60, 22}, {-78, 22}}));
  connect(alternativeSplit3.OUT2, EW.IN) annotation(
    Line(points = {{0, 52}, {0, 40}, {1, 40}}));
  connect(IW.OUT, alternativeJoin3Working.IN1) annotation(
    Line(points = {{-53, -52}, {-53, -58}, {-30, -58}, {-30, 32}, {24, 32}, {24, 24}, {25, 24}}));
  connect(IF.OUT, alternativeJoin3Fault.IN1) annotation(
    Line(points = {{-78, -42}, {-78, -42}, {-78, -44}, {-52, -44}, {-52, 34}, {70, 34}, {70, 22}, {70, 22}}));
  connect(alternativeSplit31.OUT1, IE.IN) annotation(
    Line(points = {{-106, -18}, {-108, -18}, {-108, -32}, {-106, -32}}));
  connect(alternativeJoin3Fault.OUT, F.IN) annotation(
    Line(points = {{92, 22}, {92, 22}, {92, 14}, {106, 14}, {106, 6}, {106, 6}}));
  connect(FE.OUT, alternativeJoin3.IN3) annotation(
    Line(points = {{107, -32}, {107, -72}, {81, -72}, {81, -80}}));
  connect(EW.OUT, alternativeJoin3Working.IN2) annotation(
    Line(points = {{2, 38}, {2, 30}, {-15, 30}, {-15, 24}}));
  connect(W.OUT, alternativeSplit32.IN) annotation(
    Line(points = {{-4, -6}, {14, -6}, {14, -18}}));
  connect(alternativeSplit32.OUT2, WE.IN) annotation(
    Line(points = {{13, -19}, {13, -42}}));
  connect(IE.OUT, alternativeJoin3.IN1) annotation(
    Line(points = {{-107, -34}, {-108, -34}, {-108, -72}, {-54, -72}, {-54, -80}}));
  connect(alternativeJoin3Working.OUT, W.IN) annotation(
    Line(points = {{5, 23}, {5, 17}, {-4, 17}, {-4, 10}}));
  connect(alternativeJoinIdle.OUT, I.IN) annotation(
    Line(points = {{-78, 22}, {-78, 8}}));
  connect(alternativeSplit31.OUT2, IF.IN) annotation(
    Line(points = {{-79, -19}, {-79, -40}}));
  connect(alternativeSplit3.OUT3, EF.IN) annotation(
    Line(points = {{40, 52}, {91, 52}, {91, 40}}));
  connect(E.OUT, alternativeSplit3.IN) annotation(
    Line(points = {{0, 72}, {0, 54}}));
  connect(I.OUT, alternativeSplit31.IN) annotation(
    Line(points = {{-78, -8}, {-78, -8}, {-78, -18}, {-78, -18}}));
  connect(alternativeSplit32.OUT1, WF.IN) annotation(
    Line(points = {{42, -18}, {42, -18}, {42, -52}, {42, -52}}));
  connect(alternativeSplit3.OUT1, EI.IN) annotation(
    Line(points = {{-40, 52}, {-40, 44}, {-93, 44}}));
  connect(F.OUT, FE.IN) annotation(
    Line(points = {{106, -10}, {106, -10}, {106, -30}, {108, -30}}));
  connect(cond_EI, EI.C) annotation(
    Line(points = {{-190, 84}, {-68, 84}, {-68, 42}, {-84, 42}, {-84, 44}}, color = {255, 0, 255}));
  connect(cond_EW, EW.C) annotation(
    Line(points = {{-190, 56}, {20, 56}, {20, 38}, {10, 38}, {10, 40}}, color = {255, 0, 255}));
  connect(cond_IE, IE.C) annotation(
    Line(points = {{-190, 10}, {-98, 10}, {-98, -32}, {-98, -32}}, color = {255, 0, 255}));
  connect(cond_IW, IW.C) annotation(
    Line(points = {{-190, -18}, {-44, -18}, {-44, -50}, {-44, -50}}, color = {255, 0, 255}));
  connect(cond_WI, WI.C) annotation(
    Line(points = {{-190, -84}, {-6, -84}, {-6, -32}, {-6, -32}}, color = {255, 0, 255}));
  connect(cond_WE, WE.C) annotation(
    Line(points = {{-190, -108}, {22, -108}, {22, -42}, {22, -42}}, color = {255, 0, 255}));
  connect(cond_FE, FE.C) annotation(
    Line(points = {{46, -124}, {114, -124}, {114, -30}, {116, -30}}, color = {255, 0, 255}));
  connect(cond_EF, EF.C) annotation(
    Line(points = {{-74, -124}, {-76, -124}, {-76, -90}, {142, -90}, {142, 40}, {100, 40}, {100, 40}}, color = {255, 0, 255}));
  connect(cond_IF, IF.C) annotation(
    Line(points = {{-46, -124}, {-38, -124}, {-38, -60}, {-70, -60}, {-70, -40}, {-70, -40}}, color = {255, 0, 255}));
  connect(cond_WF, WF.C) annotation(
    Line(points = {{-16, -124}, {28, -124}, {28, -74}, {50, -74}, {50, -52}, {50, -52}}, color = {255, 0, 255}));
  connect(E.X, Energy_mode) annotation(
    Line(points = {{12, 82}, {146, 82}, {146, 70}, {190, 70}}, color = {255, 0, 255}));
  connect(I.X, Idle_mode) annotation(
    Line(points = {{-68, 0}, {-44, 0}, {-44, 62}, {170, 62}, {170, 50}, {190, 50}, {190, 50}}, color = {255, 0, 255}));
  connect(F.X, Fault_mode) annotation(
    Line(points = {{116, -2}, {164, -2}, {164, 10}, {190, 10}, {190, 10}}, color = {255, 0, 255}));
  connect(W.X, Working_mode) annotation(
    Line(points = {{6, 2}, {48, 2}, {48, 30}, {190, 30}}, color = {255, 0, 255}));
annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 6}, extent = {{-50, 46}, {50, -46}}, textString = "Machine State")}));
end MachineStates;
