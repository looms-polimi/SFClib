within SFC.ContinuousSys.ContinuousTests;
model HeaterTankExample
  SFC.SFCelements.InitialStep idle annotation(
    Placement(visible = true, transformation(origin = {-90, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step fill_tank annotation(
    Placement(visible = true, transformation(origin = {-90, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step empty_tank annotation(
    Placement(visible = true, transformation(origin = {-90, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t1 annotation(
    Placement(visible = true, transformation(origin = {-90, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t2 annotation(
    Placement(visible = true, transformation(origin = {-90, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t3 annotation(
    Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t4 annotation(
    Placement(visible = true, transformation(origin = {-90, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t5 annotation(
    Placement(visible = true, transformation(origin = {-90, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t6 annotation(
    Placement(visible = true, transformation(origin = {-90, -120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition c1(y = start.y)  annotation(
    Placement(visible = true, transformation(origin = {-50, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition c2(y = tank.levelSensor > 30)  annotation(
    Placement(visible = true, transformation(origin = {-27, 41}, extent = {{-33, -9}, {33, 9}}, rotation = 0)));
  SFC.SFCelements.Condition c3(y = P.y > 30 - 0.01)  annotation(
    Placement(visible = true, transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition c4(y = stirrer.t > 60)  annotation(
    Placement(visible = true, transformation(origin = {-50, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition c5(y = P.y < 0.1)  annotation(
    Placement(visible = true, transformation(origin = {-50, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition c6(y = tank.levelSensor < 0.01)  annotation(
    Placement(visible = true, transformation(origin = {-50, -120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.StateGraph.Examples.Utilities.Tank tank(a = 0.03)  annotation(
    Placement(visible = true, transformation(origin = {45, 53}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
  Modelica.StateGraph.Examples.Utilities.valve valveIN annotation(
    Placement(visible = true, transformation(origin = {28, 100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.StateGraph.Examples.Utilities.valve valveOUT annotation(
    Placement(visible = true, transformation(origin = {66, 10}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  SFC.SFCelements.Action valve1open annotation(
    Placement(visible = true, transformation(origin = {-50, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action valve2open annotation(
    Placement(visible = true, transformation(origin = {-50, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action ON(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {-48, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action OFF(qualifierType = SFC.Types.Qualifier.P)  annotation(
    Placement(visible = true, transformation(origin = {-50, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.mergeActions ON_OFF(n = 2)  annotation(
    Placement(visible = true, transformation(origin = {50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  SFC.ContinuousSys.ContinuousBlocks.industrialPI industrialPI(Saturation = true, T = 40, k = 2 / 0.7, yMax = 100)  annotation(
    Placement(visible = true, transformation(origin = {50, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P(a = {80, 42, 1}, b = {0.7}, initType = Modelica.Blocks.Types.Init.InitialState, y_start = 20)  annotation(
    Placement(visible = true, transformation(origin = {90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step TL_0(height = 30)  annotation(
    Placement(visible = true, transformation(origin = {-10, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback FeedBack annotation(
    Placement(visible = true, transformation(origin = {20, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse start(period = 100, startTime = 10, width = 15)  annotation(
    Placement(visible = true, transformation(origin = {-162, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.StateGraph.Examples.Utilities.Source source(maxflow = 0.3)  annotation(
    Placement(visible = true, transformation(origin = {28, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step heaterON annotation(
    Placement(visible = true, transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step heaterOFF annotation(
    Placement(visible = true, transformation(origin = {-90, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step stirrer annotation(
    Placement(visible = true, transformation(origin = {-90, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action stir annotation(
    Placement(visible = true, transformation(origin = {-50, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(valve2open.actionBoolean, valveOUT.valveControl) annotation(
    Line(points = {{-40, -98}, {118, -98}, {118, 10}, {74, 10}}, color = {255, 0, 255}));
  connect(stirrer.X, stir.phase_active) annotation(
    Line(points = {{-78, -20}, {-60, -20}}, color = {255, 0, 255}));
  connect(stirrer.OUT, t4.IN) annotation(
    Line(points = {{-90, -30}, {-90, -30}, {-90, -38}, {-90, -38}}));
  connect(t3.OUT, stirrer.IN) annotation(
    Line(points = {{-90, -2}, {-90, -2}, {-90, -10}, {-90, -10}}));
  connect(heaterOFF.X, OFF.phase_active) annotation(
    Line(points = {{-78, -60}, {-62, -60}, {-62, -60}, {-60, -60}}, color = {255, 0, 255}));
  connect(heaterOFF.OUT, t5.IN) annotation(
    Line(points = {{-90, -70}, {-90, -70}, {-90, -78}, {-90, -78}}));
  connect(t4.OUT, heaterOFF.IN) annotation(
    Line(points = {{-90, -42}, {-90, -42}, {-90, -50}, {-90, -50}}));
  connect(heaterON.OUT, t3.IN) annotation(
    Line(points = {{-90, 10}, {-90, 10}, {-90, 2}, {-90, 2}, {-90, 2}}));
  connect(heaterON.X, ON.phase_active) annotation(
    Line(points = {{-78, 20}, {-60, 20}}, color = {255, 0, 255}));
  connect(t2.OUT, heaterON.IN) annotation(
    Line(points = {{-90, 38}, {-90, 38}, {-90, 30}, {-90, 30}}));
  connect(source.outflow1, valveIN.outflow1) annotation(
    Line(points = {{28, 116}, {28, 116}, {28, 106}, {28, 106}}));
  connect(FeedBack.u2, P.y) annotation(
    Line(points = {{20, -78}, {20, -78}, {20, -90}, {108, -90}, {108, -70}, {102, -70}, {102, -70}}, color = {0, 0, 127}));
  connect(TL_0.y, FeedBack.u1) annotation(
    Line(points = {{2, -70}, {12, -70}, {12, -70}, {12, -70}}, color = {0, 0, 127}));
  connect(FeedBack.y, industrialPI.u) annotation(
    Line(points = {{30, -70}, {38, -70}, {38, -70}, {38, -70}}, color = {0, 0, 127}));
  connect(OFF.actionOUT, ON_OFF.mergeIN[2]) annotation(
    Line(points = {{-40, -62}, {-30, -62}, {-30, -20}, {50, -20}}));
  connect(industrialPI.y, P.u) annotation(
    Line(points = {{60, -70}, {78, -70}, {78, -70}, {78, -70}}, color = {0, 0, 127}));
  connect(ON_OFF.y, industrialPI.cmd) annotation(
    Line(points = {{50, -40}, {50, -40}, {50, -60}, {50, -60}}, color = {255, 0, 255}));
  connect(ON.actionOUT, ON_OFF.mergeIN[1]) annotation(
    Line(points = {{-36, 18}, {5, 18}, {5, -2}, {50, -2}, {50, -20}}));
  connect(tank.outflow1, valveOUT.outflow1) annotation(
    Line(points = {{66, 37}, {66, 15}}));
  connect(empty_tank.X, valve2open.phase_active) annotation(
    Line(points = {{-78, -100}, {-60, -100}, {-60, -100}, {-60, -100}}, color = {255, 0, 255}));
  connect(valve1open.actionBoolean, valveIN.valveControl) annotation(
    Line(points = {{-40, 62}, {-12, 62}, {-12, 100}, {20, 100}, {20, 100}}, color = {255, 0, 255}));
  connect(fill_tank.X, valve1open.phase_active) annotation(
    Line(points = {{-78, 60}, {-62, 60}, {-62, 60}, {-60, 60}}, color = {255, 0, 255}));
  connect(valveIN.inflow1, tank.inflow1) annotation(
    Line(points = {{28, 94}, {28, 85}, {27.5, 85}, {27.5, 76}}));
  connect(t1.C, c1.y) annotation(
    Line(points = {{-78, 80}, {-60, 80}, {-60, 80}, {-62, 80}}, color = {255, 0, 255}));
  connect(t2.C, c2.y) annotation(
    Line(points = {{-78, 40}, {-70, 40}, {-70, 41}, {-63, 41}}, color = {255, 0, 255}));
  connect(t3.C, c3.y) annotation(
    Line(points = {{-78, 0}, {-60, 0}, {-60, 0}, {-62, 0}}, color = {255, 0, 255}));
  connect(t4.C, c4.y) annotation(
    Line(points = {{-78, -40}, {-60, -40}, {-60, -40}, {-62, -40}}, color = {255, 0, 255}));
  connect(t5.C, c5.y) annotation(
    Line(points = {{-78, -80}, {-62, -80}, {-62, -80}, {-62, -80}}, color = {255, 0, 255}));
  connect(t6.C, c6.y) annotation(
    Line(points = {{-78, -120}, {-60, -120}, {-60, -120}, {-62, -120}}, color = {255, 0, 255}));
  connect(t6.OUT, idle.IN) annotation(
    Line(points = {{-90, -122}, {-90, -122}, {-90, -130}, {-120, -130}, {-120, 116}, {-90, 116}, {-90, 110}, {-90, 110}}));
  connect(empty_tank.OUT, t6.IN) annotation(
    Line(points = {{-90, -110}, {-90, -110}, {-90, -118}, {-90, -118}}));
  connect(t5.OUT, empty_tank.IN) annotation(
    Line(points = {{-90, -82}, {-90, -82}, {-90, -90}, {-90, -90}}));
  connect(fill_tank.OUT, t2.IN) annotation(
    Line(points = {{-90, 50}, {-90, 50}, {-90, 42}, {-90, 42}}));
  connect(t1.OUT, fill_tank.IN) annotation(
    Line(points = {{-90, 78}, {-90, 78}, {-90, 70}, {-90, 70}}));
  connect(idle.OUT, t1.IN) annotation(
    Line(points = {{-90, 90}, {-90, 90}, {-90, 82}, {-90, 82}}));
  annotation(
    Icon(coordinateSystem(grid = {0, 0})),
    uses(Modelica(version = "3.2.3")),
  experiment(StartTime = 0, StopTime = 1500, Tolerance = 1e-6, Interval = 3));
end HeaterTankExample;