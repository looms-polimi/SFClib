within SFC.Tests;

model testBranchingAlt3
  Boolean proof = C1.y and C3.y and C6.y;
  SFC.BasicBlocks.Step S0(initialStep = true)  annotation(
    Placement(visible = true, transformation(origin = {6, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-42, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-42, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S3 annotation(
    Placement(visible = true, transformation(origin = {6, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S4 annotation(
    Placement(visible = true, transformation(origin = {6, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T4 annotation(
    Placement(visible = true, transformation(origin = {6, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T2 annotation(
    Placement(visible = true, transformation(origin = {-42, 8}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C4(y = S3.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {42, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse1(period = 2, startTime = 0.1, width = 20) annotation(
    Placement(visible = true, transformation(origin = {-76, 78}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.BasicBlocks.Condition C2(y = S1.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-72, 8}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T1 annotation(
    Placement(visible = true, transformation(origin = {-42, 48}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T5 annotation(
    Placement(visible = true, transformation(origin = {6, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T25 annotation(
    Placement(visible = true, transformation(origin = {-42, -32}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T45 annotation(
    Placement(visible = true, transformation(origin = {6, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S5 annotation(
    Placement(visible = true, transformation(origin = {74, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse2(period = 2.5, startTime = 0.3, width = 30) annotation(
    Placement(visible = true, transformation(origin = {-50, 78}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.BasicBlocks.Condition C1(y = Cpulse1.y) annotation(
    Placement(visible = true, transformation(origin = {-72, 48}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C3(y = Cpulse2.y and not Cpulse1.y) annotation(
    Placement(visible = true, transformation(origin = {52, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C25(y = S2.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-72, -32}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C45(y = S4.t > 1) annotation(
    Placement(visible = true, transformation(origin = {52, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C5(y = S6.t > 3) annotation(
    Placement(visible = true, transformation(origin = {36, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.AlternativeSplit3 alternativeSplit31 annotation(
    Placement(visible = true, transformation(origin = {6, 58}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  SFC.Branching.AlternativeJoin3 alternativeJoin31 annotation(
    Placement(visible = true, transformation(origin = {6, -42}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  SFC.BasicBlocks.Transition T3 annotation(
    Placement(visible = true, transformation(origin = {6, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Step S6 annotation(
    Placement(visible = true, transformation(origin = {6, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T6 annotation(
    Placement(visible = true, transformation(origin = {74, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T65 annotation(
    Placement(visible = true, transformation(origin = {74, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C6(y = Cpulse3.y and not (Cpulse2.y and not Cpulse1.y)) annotation(
    Placement(visible = true, transformation(origin = {102, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C65(y = S6.t > 1) annotation(
    Placement(visible = true, transformation(origin = {104, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse3(period = 4, startTime = 2, width = 40) annotation(
    Placement(visible = true, transformation(origin = {-24, 78}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.BasicBlocks.Step S7 annotation(
    Placement(visible = true, transformation(origin = {74, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Transition T75 annotation(
    Placement(visible = true, transformation(origin = {74, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition(y = S7.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {114, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S6.OUT, T5.IN) annotation(
    Line(points = {{6, -70}, {6, -70}, {6, -78}, {6, -78}}));
  connect(alternativeJoin31.OUT, S6.IN) annotation(
    Line(points = {{6, -42}, {6, -42}, {6, -50}, {6, -50}}));
  connect(S5.OUT, T65.IN) annotation(
    Line(points = {{74, 14}, {74, 8}}));
  connect(T6.OUT, S5.IN) annotation(
    Line(points = {{74, 42}, {74, 34}}));
  connect(T25.OUT, alternativeJoin31.IN1) annotation(
    Line(points = {{-42, -34}, {-42, -34}, {-42, -40}, {-42, -40}}));
  connect(T65.C, C65.y) annotation(
    Line(points = {{86, 6}, {89.5, 6}, {89.5, -4}, {93, -4}}, color = {255, 0, 255}));
  connect(T6.C, C6.y) annotation(
    Line(points = {{86, 44}, {91, 44}}, color = {255, 0, 255}));
  connect(alternativeSplit31.OUT3, T6.IN) annotation(
    Line(points = {{54, 58}, {54, 56}, {74, 56}, {74, 46}}));
  connect(T3.OUT, S3.IN) annotation(
    Line(points = {{6, 46}, {3, 46}, {3, 46}, {6, 46}, {6, 46}, {6, 46}, {6, 38}, {6, 38}, {6, 38}, {5, 38}, {5, 38}, {6, 38}}));
  connect(alternativeSplit31.OUT2, T3.IN) annotation(
    Line(points = {{6, 58}, {6, 58}, {6, 50}, {6, 50}}));
  connect(T3.C, C3.y) annotation(
    Line(points = {{18, 48}, {27.5, 48}, {27.5, 70}, {41, 70}}, color = {255, 0, 255}));
  connect(T45.OUT, alternativeJoin31.IN2) annotation(
    Line(points = {{6, -34}, {6, -34}, {6, -40}, {6, -40}}));
  connect(alternativeSplit31.OUT1, T1.IN) annotation(
    Line(points = {{-42, 58}, {-42, 58}, {-42, 50}, {-42, 50}}));
  connect(S0.OUT, alternativeSplit31.IN) annotation(
    Line(points = {{6, 66}, {6, 66}, {6, 60}, {6, 60}}));
  connect(T5.C, C5.y) annotation(
    Line(points = {{18, -80}, {26, -80}, {26, -80}, {24, -80}}, color = {255, 0, 255}));
  connect(T45.C, C45.y) annotation(
    Line(points = {{18, -32}, {25.5, -32}, {25.5, -54}, {41, -54}}, color = {255, 0, 255}));
  connect(T25.C, C25.y) annotation(
    Line(points = {{-54, -32}, {-61, -32}}, color = {255, 0, 255}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{-54, 48}, {-61, 48}}, color = {255, 0, 255}));
  connect(S4.OUT, T45.IN) annotation(
    Line(points = {{6, -22}, {6, -22}, {6, -30}, {6, -30}}));
  connect(S2.OUT, T25.IN) annotation(
    Line(points = {{-42, -22}, {-42, -30}}));
  connect(T5.OUT, S0.IN) annotation(
    Line(points = {{6, -82}, {6, -90}, {-92, -90}, {-92, 92}, {6, 92}, {6, 89}, {6, 89}, {6, 86}}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-42, 46}, {-42, 38}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{-54, 8}, {-61, 8}}, color = {255, 0, 255}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{18, 8}, {31, 8}}, color = {255, 0, 255}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-42, 18}, {-42, 10}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-42, 6}, {-42, -2}}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{6, 18}, {6, 10}}));
  connect(T4.OUT, S4.IN) annotation(
    Line(points = {{6, 6}, {6, -2}}));
  connect(T65.OUT, S7.IN) annotation(
    Line(points = {{74, 4}, {74, 4}, {74, -2}, {74, -2}}));
  connect(S7.OUT, T75.IN) annotation(
    Line(points = {{74, -22}, {74, -22}, {74, -30}, {74, -30}}));
  connect(T75.OUT, alternativeJoin31.IN3) annotation(
    Line(points = {{74, -34}, {74, -34}, {74, -40}, {54, -40}, {54, -40}}));
  connect(T75.C, condition.y) annotation(
    Line(points = {{86, -32}, {104, -32}, {104, -32}, {104, -32}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><span class=\"Apple-style-span\" style=\"font-size: 12px; \">Test &nbsp;performing an<b> alternative branching&nbsp;</b>in&nbsp;<b>three</b><span class=\"Apple-style-span\" style=\"font-size: 12px; \">&nbsp;sequences.</span></span><div><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><br></span></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \">This test is equivalent to <i>testBranchingAlternative2</i>&nbsp;with the only dfference of having one more sequence.</span></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><br></span></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \">All the consideration made in the mentioned test are verified also in this test.</span></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><br></span></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \">In case it is not possible to ensure simultaneous true transitions, the <b>mutual exclusitity</b> in this case will need to be more articulated.&nbsp;</span></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><br></span></span></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px; \"><span class=\"Apple-style-span\" style=\"font-size: 12px; \">An example can be:</span></span></div><div><br></div><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
    
    <table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
  <tbody><tr bgcolor=\"#e0e0e0\"><th>C1</th><th>C3</th><th>C6</th></tr>
  <tr>  <td>Cpulse1.y</td><td>Cpulse2.y and not Cpulse1.y</td><td>Cpulse3.y and not Cpulse2.y and not Cpulse1.y</td></tr>
  </tbody></table>
    
    
    </body></html>"),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2));
end testBranchingAlt3;