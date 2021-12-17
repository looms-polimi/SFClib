within FromSFCLib.DiscreteEventSys;

model PieceInSystem_NoQueue
  SFC.BasicBlocks.Action action_initialStepReset(initialStepAction = true, qualifierType = SFC.Types.Qualifier.R) annotation(
    Placement(visible = true, transformation(origin = {-30, 172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T01 annotation(
    Placement(visible = true, transformation(origin = {-80, 142}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T12 annotation(
    Placement(visible = true, transformation(origin = {-80, 92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action action_S1(qualifierType = SFC.Types.Qualifier.S) annotation(
    Placement(visible = true, transformation(origin = {-36, 112}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  SFC.BasicBlocks.mergeActions Belt(n = 4)  annotation(
    Placement(visible = true, transformation(origin = {18, 148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.mergeActions xBG1(n = 3)  annotation(
    Placement(visible = true, transformation(origin = {68, 104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-80, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition cond_T12(y = S1.t > 20) annotation(
    Placement(visible = true, transformation(origin = {-32, 90}, extent = {{-24, -12}, {24, 12}}, rotation = 0)));
  SFC.BasicBlocks.Action action(qualifierType = SFC.Types.Qualifier.S) annotation(
    Placement(visible = true, transformation(origin = {-35, 57}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  SFC.BasicBlocks.Transition T23(Tcycle = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-80, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {-80, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T34 annotation(
    Placement(visible = true, transformation(origin = {-80, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition cond_T34(y = S3.t > 5)  annotation(
    Placement(visible = true, transformation(origin = {-20, -15}, extent = {{-28, -11}, {28, 11}}, rotation = 0)));
  SFC.BasicBlocks.Action action_S3(qualifierType = SFC.Types.Qualifier.R) annotation(
    Placement(visible = true, transformation(origin = {-34, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S4 annotation(
    Placement(visible = true, transformation(origin = {-80, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action action_S4(qualifierType = SFC.Types.Qualifier.S)  annotation(
    Placement(visible = true, transformation(origin = {-34, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T45 annotation(
    Placement(visible = true, transformation(origin = {-80, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition cond_T45(y = S4.t > 5)  annotation(
    Placement(visible = true, transformation(origin = {-38, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S5 annotation(
    Placement(visible = true, transformation(origin = {-80, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Action action_S5(qualifierType = SFC.Types.Qualifier.R) annotation(
    Placement(visible = true, transformation(origin = {-34, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T50 annotation(
    Placement(visible = true, transformation(origin = {-80, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition cond_50(y = S5.t > 10)  annotation(
    Placement(visible = true, transformation(origin = {-29, -113}, extent = {{-23, -13}, {23, 13}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-80, 116}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.InitialStep initialStep annotation(
    Placement(visible = true, transformation(origin = {-80, 168}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Out1_Belt annotation(
    Placement(visible = true, transformation(origin = {190, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {230, 72}, extent = {{-30, -30}, {30, 30}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Out2_xBG1 annotation(
    Placement(visible = true, transformation(origin = {190, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {229, -69}, extent = {{-29, -29}, {29, 29}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput In annotation(
    Placement(visible = true, transformation(origin = {-214, 38}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-160, 0}, extent = {{-40, -40}, {40, 40}}, rotation = 0)));
equation
  connect(action_initialStepReset.actionOUT, Belt.mergeIN[1]) annotation(
    Line(points = {{-18, 170}, {-6, 170}, {-6, 148}, {10, 148}}));
  connect(action_initialStepReset.actionOUT, xBG1.mergeIN[1]) annotation(
    Line(points = {{-18, 170}, {40, 170}, {40, 104}, {60, 104}}));
  connect(T12.OUT, S2.IN) annotation(
    Line(points = {{-80, 90}, {-80, 76}}));
  connect(T12.C, cond_T12.y) annotation(
    Line(points = {{-68, 92}, {-63, 92}, {-63, 90}, {-58, 90}}, color = {255, 0, 255}));
  connect(S2.X, action.phase_active) annotation(
    Line(points = {{-68, 66}, {-62, 66}, {-62, 57}, {-58, 57}}, color = {255, 0, 255}));
  connect(action.actionOUT, xBG1.mergeIN[2]) annotation(
    Line(points = {{-12, 53}, {40, 53}, {40, 104}, {60, 104}}));
  connect(S2.OUT, T23.IN) annotation(
    Line(points = {{-80, 56}, {-80, 40}}));
  connect(T23.OUT, S3.IN) annotation(
    Line(points = {{-80, 36}, {-80, 28}}));
  connect(S3.OUT, T34.IN) annotation(
    Line(points = {{-80, 8}, {-80, -12}}));
  connect(T34.C, cond_T34.y) annotation(
    Line(points = {{-68, -14}, {-59.5, -14}, {-59.5, -15}, {-51, -15}}, color = {255, 0, 255}));
  connect(xBG1.y, T23.C) annotation(
    Line(points = {{80, 104}, {88, 104}, {88, 38}, {-68, 38}}, color = {255, 0, 255}));
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
    Line(points = {{-22, -90}, {40, -90}, {40, 104}, {60, 104}}));
  connect(S5.X, action_S5.phase_active) annotation(
    Line(points = {{-68, -88}, {-46, -88}}, color = {255, 0, 255}));
  connect(S5.OUT, T50.IN) annotation(
    Line(points = {{-80, -98}, {-80, -98}, {-80, -108}, {-80, -108}}));
  connect(cond_50.y, T50.C) annotation(
    Line(points = {{-54, -113}, {-60.75, -113}, {-60.75, -110}, {-68, -110}}, color = {255, 0, 255}));
  connect(S1.X, action_S1.phase_active) annotation(
    Line(points = {{-68, 116}, {-60, 116}, {-60, 112}, {-53, 112}}, color = {255, 0, 255}));
  connect(S1.OUT, T12.IN) annotation(
    Line(points = {{-80, 106}, {-80, 94}}));
  connect(T01.OUT, S1.IN) annotation(
    Line(points = {{-80, 140}, {-80, 126}}));
  connect(initialStep.X, action_initialStepReset.phase_active) annotation(
    Line(points = {{-68, 168}, {-58, 168}, {-58, 172}, {-42, 172}}, color = {255, 0, 255}));
  connect(initialStep.OUT, T01.IN) annotation(
    Line(points = {{-80, 158}, {-80, 144}}));
  connect(initialStep.IN, T50.OUT) annotation(
    Line(points = {{-80, 178}, {-80, 188}, {-180, 188}, {-180, -122}, {-80, -122}, {-80, -112}}));
  connect(action_S1.actionOUT, Belt.mergeIN[2]) annotation(
    Line(points = {{-19, 109}, {-19, 148}, {10, 148}}));
  connect(Belt.y, Out1_Belt) annotation(
    Line(points = {{30, 148}, {160, 148}, {160, 130}, {190, 130}, {190, 130}}, color = {255, 0, 255}));
  connect(xBG1.y, Out2_xBG1) annotation(
    Line(points = {{80, 104}, {136, 104}, {136, 92}, {190, 92}, {190, 90}}, color = {255, 0, 255}));
  connect(In, T01.C) annotation(
    Line(points = {{-214, 38}, {-138, 38}, {-138, 134}, {-62, 134}, {-62, 142}, {-68, 142}, {-68, 142}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(initialScale = 0, extent = {{-200, -200}, {200, 200}})),
    
  experiment(StartTime = 0, StopTime = 400, Tolerance = 1e-6, Interval = 0.8),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}}, initialScale = 0), graphics = {Rectangle(origin = {28, 47}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-228, 153}, {172, -247}}), Text(origin = {5, 16}, extent = {{-115, 76}, {115, -76}}, textString = "Piece_In")}));
end PieceInSystem_NoQueue;