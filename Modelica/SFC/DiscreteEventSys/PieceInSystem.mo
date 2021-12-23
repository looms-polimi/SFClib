within SFC.DiscreteEventSys;

model PieceInSystem
  SFC.SFCelements.Action action_initialStepReset(initialStepAction = true, qualifierType = SFC.Types.Qualifier.R) annotation(
    Placement(visible = true, transformation(origin = {-30, 172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-80, 142}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition cond_T01(y = PieceIn.y) annotation(
    Placement(visible = true, transformation(origin = {-42, 142}, extent = {{-18, -12}, {18, 12}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse PieceIn(period = 50, startTime = 10, width = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-126, 168}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.SFCelements.Transition T12 annotation(
    Placement(visible = true, transformation(origin = {-80, 92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action action_S1(qualifierType = SFC.Types.Qualifier.S) annotation(
    Placement(visible = true, transformation(origin = {-40, 116}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.mergeActions Belt(n = 4)  annotation(
    Placement(visible = true, transformation(origin = {18, 148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.mergeActions xBG1(n = 3)  annotation(
    Placement(visible = true, transformation(origin = {62, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-80, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition cond_T12(y = S1.t > 20) annotation(
    Placement(visible = true, transformation(origin = {-38, 92}, extent = {{-18, -12}, {18, 12}}, rotation = 0)));
  SFC.SFCelements.Action action(qualifierType = SFC.Types.Qualifier.S) annotation(
    Placement(visible = true, transformation(origin = {-44, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T23(Tcycle = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-80, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-80, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T34 annotation(
    Placement(visible = true, transformation(origin = {-80, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition cond_T34(y = S3.t > 5)  annotation(
    Placement(visible = true, transformation(origin = {-38, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action action_S3(qualifierType = SFC.Types.Qualifier.R) annotation(
    Placement(visible = true, transformation(origin = {-34, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S4 annotation(
    Placement(visible = true, transformation(origin = {-80, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action action_S4(qualifierType = SFC.Types.Qualifier.S)  annotation(
    Placement(visible = true, transformation(origin = {-34, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T45 annotation(
    Placement(visible = true, transformation(origin = {-80, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition cond_T45(y = S4.t > 5)  annotation(
    Placement(visible = true, transformation(origin = {-38, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S5 annotation(
    Placement(visible = true, transformation(origin = {-80, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Action action_S5(qualifierType = SFC.Types.Qualifier.R) annotation(
    Placement(visible = true, transformation(origin = {-34, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T50 annotation(
    Placement(visible = true, transformation(origin = {-80, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition cond_50(y = S5.t > 10)  annotation(
    Placement(visible = true, transformation(origin = {-42, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-80, 116}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.InitialStep initialStep annotation(
    Placement(visible = true, transformation(origin = {-80, 168}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T01.C, cond_T01.y) annotation(
    Line(points = {{-68, 142}, {-62, 142}}, color = {255, 0, 255}));
  connect(action_initialStepReset.actionOUT, Belt.mergeIN[1]) annotation(
    Line(points = {{-18, 170}, {-6, 170}, {-6, 148}, {10, 148}}));
  connect(action_S1.actionOUT, Belt.mergeIN[2]) annotation(
    Line(points = {{28, 10}, {50, 10}, {50, 50}, {82, 50}, {82, 50}}));
  connect(action_initialStepReset.actionOUT, xBG1.mergeIN[1]) annotation(
    Line(points = {{-18, 170}, {40, 170}, {40, 110}, {54, 110}}));
  connect(T12.OUT, S2.IN) annotation(
    Line(points = {{-80, 90}, {-80, 76}}));
  connect(T12.C, cond_T12.y) annotation(
    Line(points = {{-68, 92}, {-58, 92}}, color = {255, 0, 255}));
  connect(S2.X, action.phase_active) annotation(
    Line(points = {{-68, 66}, {-56, 66}}, color = {255, 0, 255}));
  connect(action.actionOUT, xBG1.mergeIN[2]) annotation(
    Line(points = {{-32, 64}, {40, 64}, {40, 110}, {54, 110}}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{-80, 56}, {-80, 40}}));
  connect(T23.OUT, S3.IN) annotation(
    Line(points = {{-80, 36}, {-80, 28}}));
  connect(S3.OUT, T34.IN) annotation(
    Line(points = {{-80, 8}, {-80, -12}}));
  connect(T34.C, cond_T34.y) annotation(
    Line(points = {{-68, -14}, {-49, -14}}, color = {255, 0, 255}));
  connect(xBG1.y, T23.C) annotation(
    Line(points = {{74, 110}, {88, 110}, {88, 38}, {-68, 38}}, color = {255, 0, 255}));
  connect(S3.X, action_S3.phase_active) annotation(
    Line(points = {{-68, 18}, {-46, 18}}, color = {255, 0, 255}));
  connect(action_S3.actionOUT, Belt.mergeIN[3]) annotation(
    Line(points = {{-22, 16}, {-6, 16}, {-6, 148}, {10, 148}}));
  connect(T34.OUT, S4.IN) annotation(
    Line(points = {{-80, -16}, {-80, -28}}));
  connect(S4.X, action_S4.phase_active) annotation(
    Line(points = {{-68, -38}, {-46, -38}}, color = {255, 0, 255}));
  connect(action_S4.actionOUT, Belt.mergeIN[4]) annotation(
    Line(points = {{-22, -40}, {-6, -40}, {-6, 148}, {10, 148}}));
  connect(S4.OUT, T45.IN) annotation(
    Line(points = {{-80, -48}, {-80, -58}}));
  connect(cond_T45.y, T45.C) annotation(
    Line(points = {{-49, -60}, {-68, -60}}, color = {255, 0, 255}));
  connect(T45.OUT, S5.IN) annotation(
    Line(points = {{-80, -62}, {-80, -78}}));
  connect(action_S5.actionOUT, xBG1.mergeIN[3]) annotation(
    Line(points = {{-22, -90}, {40, -90}, {40, 110}, {54, 110}}));
  connect(S5.X, action_S5.phase_active) annotation(
    Line(points = {{-68, -88}, {-46, -88}}, color = {255, 0, 255}));
  connect(S5.OUT, T50.IN) annotation(
    Line(points = {{-80, -98}, {-80, -98}, {-80, -108}, {-80, -108}}));
  connect(cond_50.y, T50.C) annotation(
    Line(points = {{-54, -110}, {-68, -110}, {-68, -110}, {-68, -110}}, color = {255, 0, 255}));
  connect(S1.X, action_S1.phase_active) annotation(
    Line(points = {{-68, 116}, {-52, 116}}, color = {255, 0, 255}));
  connect(S1.OUT, T12.IN) annotation(
    Line(points = {{-80, 106}, {-80, 94}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-80, 140}, {-80, 126}}));
  connect(initialStep.X, action_initialStepReset.phase_active) annotation(
    Line(points = {{-68, 168}, {-58, 168}, {-58, 172}, {-42, 172}}, color = {255, 0, 255}));
  connect(initialStep.OUT, T01.IN) annotation(
    Line(points = {{-80, 158}, {-80, 144}}));
  connect(initialStep.IN, T50.OUT) annotation(
    Line(points = {{-80, 178}, {-80, 178}, {-80, 188}, {-110, 188}, {-110, -126}, {-80, -126}, {-80, -112}, {-80, -112}}));
  annotation(
    Diagram(coordinateSystem(initialScale = 0, extent = {{-200, -200}, {200, 200}})),
    Icon(coordinateSystem(initialScale = 0, extent = {{-200, -200}, {200, 200}})));
end PieceInSystem;
