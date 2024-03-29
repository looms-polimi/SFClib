within SFC.Tests.TestBranching;

model testAlt2Brach "Alternative Split/Join test with two branches"
  Boolean res = C1.y and C3.y;
  SFC.SFCelements.Step S0(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-16, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S1 annotation(
    Placement(visible = true, transformation(origin = {-56, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S2 annotation(
    Placement(visible = true, transformation(origin = {-56, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S3 annotation(
    Placement(visible = true, transformation(origin = {24, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S4 annotation(
    Placement(visible = true, transformation(origin = {24, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T4(label = "T4")  annotation(
    Placement(visible = true, transformation(origin = {24, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T2(label = "T2")  annotation(
    Placement(visible = true, transformation(origin = {-56, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C4(y = S3.t > 1) annotation(
    Placement(visible = true, transformation(origin = {54, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse1(period = 4, startTime = 0.1, width = 50) annotation(
    Placement(visible = true, transformation(origin = {-116, 162}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.SFCelements.Condition C2(y = S1.t > 0.5) annotation(
    Placement(visible = true, transformation(origin = {-26, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.AlternativeSplit2 alternativeSplit21 annotation(
    Placement(visible = true, transformation(origin = {-16, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T1(label = "T1")  annotation(
    Placement(visible = true, transformation(origin = {-56, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T3(label = "T3")  annotation(
    Placement(visible = true, transformation(origin = {24, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T5(label = "T5")  annotation(
    Placement(visible = true, transformation(origin = {-16, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Branching.AlternativeJoin2 alternativeJoin21 annotation(
    Placement(visible = true, transformation(origin = {-16, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T25(label = "T25")  annotation(
    Placement(visible = true, transformation(origin = {-56, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition T45(label = "T45")  annotation(
    Placement(visible = true, transformation(origin = {24, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step S5 annotation(
    Placement(visible = true, transformation(origin = {-16, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse Cpulse2(period = 3, startTime = 2, width = 60) annotation(
    Placement(visible = true, transformation(origin = {-58, 172}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  SFC.SFCelements.Condition C1(y = Cpulse1.y and not Cpulse2.y) annotation(
    Placement(visible = true, transformation(origin = {-23, 48}, extent = {{-13, -10}, {13, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C3(y = Cpulse2.y) annotation(
    Placement(visible = true, transformation(origin = {54, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C25(y = S2.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-26, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C45(y = S4.t > 2) annotation(
    Placement(visible = true, transformation(origin = {54, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition C5(y = S5.t > 3) annotation(
    Placement(visible = true, transformation(origin = {29, -80}, extent = {{-17, -10}, {17, 10}}, rotation = 0)));
  inner SFC.SFCelements.CyclicGroup cyclicGroup annotation(
    Placement(visible = true, transformation(origin = {90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(T5.C, C5.y) annotation(
    Line(points = {{-4, -80}, {10, -80}}, color = {255, 0, 255}));
  connect(T45.C, C45.y) annotation(
    Line(points = {{36, -32}, {42, -32}, {42, -32}, {42, -32}}, color = {255, 0, 255}));
  connect(T25.C, C25.y) annotation(
    Line(points = {{-44, -32}, {-40, -32}, {-40, -32}, {-36, -32}, {-36, -32}, {-38, -32}}, color = {255, 0, 255}));
  connect(T3.C, C3.y) annotation(
    Line(points = {{36, 48}, {42, 48}, {42, 48}, {42, 48}}, color = {255, 0, 255}));
  connect(T1.C, C1.y) annotation(
    Line(points = {{-44, 48}, {-37, 48}}, color = {255, 0, 255}));
  connect(alternativeJoin21.OUT, S5.IN) annotation(
    Line(points = {{-16, -42}, {-16, -42}, {-16, -50}, {-16, -50}, {-16, -50}, {-16, -50}}));
  connect(S5.OUT, T5.IN) annotation(
    Line(points = {{-16, -70}, {-16, -70}, {-16, -70}, {-16, -70}, {-16, -78}, {-16, -78}, {-16, -78}, {-16, -78}}));
  connect(S4.OUT, T45.IN) annotation(
    Line(points = {{24, -22}, {24, -22}, {24, -30}, {24, -30}}));
  connect(T45.OUT, alternativeJoin21.IN2) annotation(
    Line(points = {{24, -34}, {24, -34}, {24, -40}, {24, -40}}));
  connect(S2.OUT, T25.IN) annotation(
    Line(points = {{-56, -22}, {-56, -22}, {-56, -22}, {-56, -22}, {-56, -30}, {-56, -30}, {-56, -30}, {-56, -30}}));
  connect(T25.OUT, alternativeJoin21.IN1) annotation(
    Line(points = {{-56, -34}, {-56, -34}, {-56, -34}, {-56, -34}, {-56, -40}, {-56, -40}, {-56, -40}, {-56, -40}}));
  connect(T5.OUT, S0.IN) annotation(
    Line(points = {{-16, -82}, {-16, -90}, {-80, -90}, {-80, 92}, {-16, 92}, {-16, 86}}));
  connect(alternativeSplit21.OUT2, T3.IN) annotation(
    Line(points = {{24, 58}, {24, 58}, {24, 50}, {24, 50}}));
  connect(T3.OUT, S3.IN) annotation(
    Line(points = {{24, 46}, {24, 46}, {24, 46}, {24, 46}, {24, 38}, {24, 38}, {24, 38}, {24, 38}}));
  connect(alternativeSplit21.OUT1, T1.IN) annotation(
    Line(points = {{-56, 58}, {-56, 58}, {-56, 50}, {-56, 50}}));
  connect(T1.OUT, S1.IN) annotation(
    Line(points = {{-56, 46}, {-56, 46}, {-56, 38}, {-56, 38}}));
  connect(S0.OUT, alternativeSplit21.IN) annotation(
    Line(points = {{-16, 66}, {-16, 60}}));
  connect(T2.C, C2.y) annotation(
    Line(points = {{-44, 8}, {-37, 8}}, color = {255, 0, 255}));
  connect(T4.C, C4.y) annotation(
    Line(points = {{36, 8}, {43, 8}}, color = {255, 0, 255}));
  connect(S1.OUT, T2.IN) annotation(
    Line(points = {{-56, 18}, {-56, 10}}));
  connect(T2.OUT, S2.IN) annotation(
    Line(points = {{-56, 6}, {-56, -2}}));
  connect(S3.OUT, T4.IN) annotation(
    Line(points = {{24, 18}, {24, 10}}));
  connect(T4.OUT, S4.IN) annotation(
    Line(points = {{24, 6}, {24, -2}}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div>Alternative branching consists in choosing between different sequences of system events.</div><div><br></div><div>Step <b>S0</b> is connected to <i>AlternativeSplit2</i>, that in turn is connected to two transitions <b>T1</b> and <b>T3</b>, with different conditions. Based on which condition will be first verified, the system will evolve from step <b>S0</b> to <b>S1</b> or <b>S3</b> and the evolution of the SFC will continue in the chosen sequence. At the end of the branching, with the <i>AlternativeJoin2</i>, the system returns to the main sequence of events.</div><div><br></div><div>The two conditions <b>C1</b> and <b>C3</b> must be mutually exclusive to avoid conflicts in case they simultaneously become true.This result can be achieved setting:</div><div><br></div><div><span class=\"Apple-style-span\" style=\"font-size: 12px;\">
    
    
    <table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
  <tbody><tr bgcolor=\"#e0e0e0\"><th>C1</th><th>C3</th>
  </tr><tr>  <td>Cpulse1.y</td><td>Cpulse2.y and not Cpulse1.y</td>
  </tr></tbody></table></span></div><div><br></div><div>The result of the test shows in the figure below that after Step S0, S1 and S3 are never active at the same time.</div><div><b><u>Note</u></b> that if the mutual exclusivity of the conditions cannot be ensured the library can not give any guaranty about the correctness of the SFC evolution.</div><div><br></div><div><b>FUNZIONA MA&nbsp;NOTA: S0 NON SEMPRE VIENE VISUALIZZATO ATTIVO CON T1 E T3 CHE NON ASPETTANO UN MINIMO TC, grafici da cambiare&nbsp;</b></div><div><br></div><div>&nbsp;
  
    <img width=\"400\" src=\"modelica://SFC/Images/Test/AltBranches2.png\">&nbsp;</div></body></html>"),
    experiment(StartTime = 0, StopTime = 25, Tolerance = 1e-06, Interval = 0.05),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end testAlt2Brach;