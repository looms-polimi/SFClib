within SFC.ContinuousSys.ContinuousTests;

package HeaterUsingSubSFC
  package Utilities
    model SubFillingEmptying
      
      Modelica.StateGraph.Examples.Utilities.Source source(maxflow = 0.3) annotation(
        Placement(visible = true, transformation(origin = {-18, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.StateGraph.Examples.Utilities.valve valveOUT annotation(
        Placement(visible = true, transformation(origin = {20, -60}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
      Modelica.StateGraph.Examples.Utilities.Tank tank(a = 0.03) annotation(
        Placement(visible = true, transformation(origin = {3, -13}, extent = {{-35, -35}, {35, 35}}, rotation = 180)));
      Modelica.StateGraph.Examples.Utilities.valve valveIN annotation(
        Placement(visible = true, transformation(origin = {-18, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Interfaces.BooleanInput v2_open annotation(
        Placement(visible = true, transformation(origin = {-100, -48}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.BooleanInput v1_open annotation(
        Placement(visible = true, transformation(origin = {-100, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -58}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
        Placement(visible = true, transformation(origin = {84, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {84, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(source.outflow1, valveIN.outflow1) annotation(
        Line(points = {{-18, 47}, {-18, 35}}));
      connect(tank.outflow1, valveOUT.outflow1) annotation(
        Line(points = {{-18, 3}, {-18, -44}, {20, -44}, {20, -55}}));
      connect(valveIN.inflow1, tank.inflow1) annotation(
        Line(points = {{-18, 25}, {-18, 11}, {20.5, 11}, {20.5, -36}}));
      connect(valveIN.valveControl, v1_open) annotation(
        Line(points = {{-26, 30}, {-90, 30}, {-90, 30}, {-100, 30}}, color = {255, 0, 255}));
      connect(v2_open, valveOUT.valveControl) annotation(
        Line(points = {{-100, -48}, {-26, -48}, {-26, -88}, {32, -88}, {32, -60}, {28, -60}, {28, -60}}, color = {255, 0, 255}));
  connect(tank.levelSensor, y) annotation(
        Line(points = {{28, -6}, {54, -6}, {54, 0}, {84, 0}, {84, 0}}, color = {0, 0, 127}));
      annotation(
        Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-2, -5}, extent = {{-64, 29}, {64, -29}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)));
    end SubFillingEmptying;

    model HeatingAndStirring
    extends SFC.Interfaces.subSystem;
  SFC.SFCelements.Condition start_collecting(y = u) annotation(
        Placement(visible = true, transformation(origin = {-24, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.InitialStep initialization annotation(
        Placement(visible = true, transformation(origin = {-56, 92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.mergeActions ON_OFF(n = 2) annotation(
        Placement(visible = true, transformation(origin = {82, 88}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  SFC.SFCelements.Condition c5(y = P.y < 0.1) annotation(
        Placement(visible = true, transformation(origin = {-14, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition c4(y = stirrer.t > 60) annotation(
        Placement(visible = true, transformation(origin = {-14, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t3 annotation(
        Placement(visible = true, transformation(origin = {-54, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t5 annotation(
        Placement(visible = true, transformation(origin = {-54, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step heaterON annotation(
        Placement(visible = true, transformation(origin = {-54, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback FeedBack annotation(
        Placement(visible = true, transformation(origin = {52, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action stir annotation(
        Placement(visible = true, transformation(origin = {-14, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step heaterOFF annotation(
        Placement(visible = true, transformation(origin = {-54, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action OFF(qualifierType = SFC.Types.Qualifier.P) annotation(
        Placement(visible = true, transformation(origin = {-14, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step stirrer annotation(
        Placement(visible = true, transformation(origin = {-54, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action ON(qualifierType = SFC.Types.Qualifier.P) annotation(
        Placement(visible = true, transformation(origin = {-12, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition c3(y = P.y > 30 - 0.01) annotation(
        Placement(visible = true, transformation(origin = {-14, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.ContinuousSys.ContinuousBlocks.industrialPI industrialPI(Saturation = true, T = 40, k = 2 / 0.7, yMax = 100) annotation(
        Placement(visible = true, transformation(origin = {82, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step TL_0(height = 30) annotation(
        Placement(visible = true, transformation(origin = {22, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t4 annotation(
        Placement(visible = true, transformation(origin = {-54, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P(a = {80, 42, 1}, b = {0.7}, initType = Modelica.Blocks.Types.Init.InitialState, y_start = 20) annotation(
        Placement(visible = true, transformation(origin = {112, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition tsub1 annotation(
        Placement(visible = true, transformation(origin = {-56, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Step EndHeating annotation(
        Placement(visible = true, transformation(origin = {-54, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Transition t6(Tcycle = 0.01)  annotation(
        Placement(visible = true, transformation(origin = {-54, -102}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Action action(qualifierType = SFC.Types.Qualifier.P) annotation(
        Placement(visible = true, transformation(origin = {-14, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.Condition condition(y = true) annotation(
        Placement(visible = true, transformation(origin = {-20, -98}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
  connect(heaterOFF.X, OFF.phase_active) annotation(
        Line(points = {{-42, -36}, {-26, -36}}, color = {255, 0, 255}));
  connect(heaterOFF.OUT, t5.IN) annotation(
        Line(points = {{-54, -46}, {-54, -54}}));
  connect(t4.C, c4.y) annotation(
        Line(points = {{-42, -16}, {-25, -16}}, color = {255, 0, 255}));
  connect(t4.OUT, heaterOFF.IN) annotation(
        Line(points = {{-54, -18}, {-54, -26}}));
      connect(FeedBack.y, industrialPI.u) annotation(
        Line(points = {{61, 50}, {71, 50}}, color = {0, 0, 127}));
  connect(stirrer.OUT, t4.IN) annotation(
        Line(points = {{-54, -6}, {-54, -14}}));
  connect(stirrer.X, stir.phase_active) annotation(
        Line(points = {{-42, 4}, {-26, 4}}, color = {255, 0, 255}));
      connect(TL_0.y, FeedBack.u1) annotation(
        Line(points = {{33, 50}, {44, 50}}, color = {0, 0, 127}));
  connect(ON.actionOUT, ON_OFF.mergeIN[1]) annotation(
        Line(points = {{0, 42}, {5, 42}, {5, 10}, {82, 10}, {82, 96}}));
  connect(t5.C, c5.y) annotation(
        Line(points = {{-42, -56}, {-25, -56}}, color = {255, 0, 255}));
  connect(t3.OUT, stirrer.IN) annotation(
        Line(points = {{-54, 18}, {-54, 14}}));
  connect(heaterON.X, ON.phase_active) annotation(
        Line(points = {{-42, 44}, {-24, 44}}, color = {255, 0, 255}));
  connect(heaterON.OUT, t3.IN) annotation(
        Line(points = {{-54, 34}, {-54, 22}}));
  connect(t3.C, c3.y) annotation(
        Line(points = {{-42, 20}, {-33.5, 20}, {-33.5, 24}, {-25, 24}}, color = {255, 0, 255}));
  connect(OFF.actionOUT, ON_OFF.mergeIN[2]) annotation(
        Line(points = {{-2, -38}, {25, -38}, {25, -52}, {82, -52}, {82, 96}}));
    connect(ON_OFF.y, industrialPI.cmd) annotation(
        Line(points = {{82, 76}, {82, 61}}, color = {255, 0, 255}));
    connect(industrialPI.y, P.u) annotation(
        Line(points = {{93, 50}, {96.5, 50}, {96.5, 52}, {100, 52}}, color = {0, 0, 127}));
    connect(P.y, FeedBack.u2) annotation(
        Line(points = {{123, 52}, {127, 52}, {127, 26}, {52, 26}, {52, 42}}, color = {0, 0, 127}));
  connect(tsub1.C, start_collecting.y) annotation(
        Line(points = {{-44, 64}, {-39.5, 64}, {-39.5, 66}, {-35, 66}}, color = {255, 0, 255}));
  connect(initialization.OUT, tsub1.IN) annotation(
        Line(points = {{-56, 82}, {-57, 82}, {-57, 66}, {-56, 66}}));
  connect(heaterON.IN, tsub1.OUT) annotation(
        Line(points = {{-54, 54}, {-54, 58}, {-56, 58}, {-56, 62}}));
  connect(EndHeating.OUT, t6.IN) annotation(
        Line(points = {{-54, -88}, {-54, -100}}));
  connect(t6.OUT, initialization.IN) annotation(
        Line(points = {{-54, -104}, {-78, -104}, {-78, 104}, {-56, 104}, {-56, 102}}));
  connect(EndHeating.X, action.phase_active) annotation(
        Line(points = {{-42, -78}, {-32, -78}, {-32, -80}, {-26, -80}}, color = {255, 0, 255}));
  connect(t6.C, condition.y) annotation(
        Line(points = {{-42, -102}, {-41, -102}, {-41, -98}, {-30, -98}}, color = {255, 0, 255}));
  connect(EndHeating.IN, t5.OUT) annotation(
        Line(points = {{-54, -68}, {-54, -68}, {-54, -58}, {-54, -58}}));
  connect(action.actionBoolean, y) annotation(
        Line(points = {{-2, -78}, {90, -78}, {90, 0}, {100, 0}, {100, 0}}, color = {255, 0, 255}));
    end HeatingAndStirring;
    
    model HeatingAndStirring2
    extends SFC.Interfaces.subSystem;
    SFC.SFCelements.Condition start_collecting(y = u) annotation(
        Placement(visible = true, transformation(origin = {-24, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.InitialStep initialization annotation(
        Placement(visible = true, transformation(origin = {-56, 92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Condition c5(y = true) annotation(
        Placement(visible = true, transformation(origin = {-14, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Condition c4(y = stirrer.t > 60) annotation(
        Placement(visible = true, transformation(origin = {-14, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Transition t3 annotation(
        Placement(visible = true, transformation(origin = {-54, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Transition t5 annotation(
        Placement(visible = true, transformation(origin = {-54, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Step heaterON annotation(
        Placement(visible = true, transformation(origin = {-54, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Action stir annotation(
        Placement(visible = true, transformation(origin = {-14, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Step heaterOFF annotation(
        Placement(visible = true, transformation(origin = {-54, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Action OFF(qualifierType = SFC.Types.Qualifier.P) annotation(
        Placement(visible = true, transformation(origin = {-14, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Step stirrer annotation(
        Placement(visible = true, transformation(origin = {-54, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Action ON(qualifierType = SFC.Types.Qualifier.P) annotation(
        Placement(visible = true, transformation(origin = {-12, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Condition c3(y = true) annotation(
        Placement(visible = true, transformation(origin = {-14, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Transition t4 annotation(
        Placement(visible = true, transformation(origin = {-54, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Transition tsub1 annotation(
        Placement(visible = true, transformation(origin = {-56, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCelements.mergeActions ON_OFF(n = 2) annotation(
        Placement(visible = true, transformation(origin = {106, 80}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  SFC.ContinuousSys.ContinuousBlocks.industrialPI industrialPI(Saturation = true, T = 40, k = 2 / 0.7, yMax = 100) annotation(
        Placement(visible = true, transformation(origin = {106, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback FeedBack annotation(
        Placement(visible = true, transformation(origin = {76, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction P(a = {80, 42, 1}, b = {0.7}, initType = Modelica.Blocks.Types.Init.InitialState, y_start = 20) annotation(
        Placement(visible = true, transformation(origin = {136, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step TL_0(height = 30) annotation(
        Placement(visible = true, transformation(origin = {46, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(heaterOFF.X, OFF.phase_active) annotation(
        Line(points = {{-42, -36}, {-26, -36}}, color = {255, 0, 255}));
      connect(heaterOFF.OUT, t5.IN) annotation(
        Line(points = {{-54, -46}, {-54, -54}}));
      connect(t4.C, c4.y) annotation(
        Line(points = {{-42, -16}, {-25, -16}}, color = {255, 0, 255}));
      connect(t4.OUT, heaterOFF.IN) annotation(
        Line(points = {{-54, -18}, {-54, -26}}));
      connect(stirrer.OUT, t4.IN) annotation(
        Line(points = {{-54, -6}, {-54, -14}}));
      connect(stirrer.X, stir.phase_active) annotation(
        Line(points = {{-42, 4}, {-26, 4}}, color = {255, 0, 255}));
      connect(t5.C, c5.y) annotation(
        Line(points = {{-42, -56}, {-25, -56}}, color = {255, 0, 255}));
      connect(t3.OUT, stirrer.IN) annotation(
        Line(points = {{-54, 18}, {-54, 14}}));
      connect(heaterON.X, ON.phase_active) annotation(
        Line(points = {{-42, 44}, {-24, 44}}, color = {255, 0, 255}));
      connect(heaterON.OUT, t3.IN) annotation(
        Line(points = {{-54, 34}, {-54, 22}}));
      connect(t3.C, c3.y) annotation(
        Line(points = {{-42, 20}, {-33.5, 20}, {-33.5, 24}, {-25, 24}}, color = {255, 0, 255}));
      connect(tsub1.C, start_collecting.y) annotation(
        Line(points = {{-44, 64}, {-39.5, 64}, {-39.5, 66}, {-35, 66}}, color = {255, 0, 255}));
      connect(initialization.OUT, tsub1.IN) annotation(
        Line(points = {{-56, 82}, {-57, 82}, {-57, 66}, {-56, 66}}));
      connect(heaterON.IN, tsub1.OUT) annotation(
        Line(points = {{-54, 54}, {-54, 58}, {-56, 58}, {-56, 62}}));
      connect(initialization.IN, t5.OUT) annotation(
        Line(points = {{-56, 102}, {-56, 102}, {-56, 108}, {-82, 108}, {-82, -68}, {-54, -68}, {-54, -58}, {-54, -58}}));
      connect(y, c5.y) annotation(
        Line(points = {{100, 0}, {60, 0}, {60, -82}, {-26, -82}, {-26, -56}, {-24, -56}}, color = {255, 0, 255}));
  connect(TL_0.y, FeedBack.u1) annotation(
        Line(points = {{57, 42}, {68, 42}}, color = {0, 0, 127}));
  connect(P.y, FeedBack.u2) annotation(
        Line(points = {{147, 44}, {151, 44}, {151, 18}, {76, 18}, {76, 34}}, color = {0, 0, 127}));
  connect(industrialPI.y, P.u) annotation(
        Line(points = {{117, 42}, {120.5, 42}, {120.5, 44}, {124, 44}}, color = {0, 0, 127}));
  connect(FeedBack.y, industrialPI.u) annotation(
        Line(points = {{85, 42}, {95, 42}}, color = {0, 0, 127}));
  connect(ON_OFF.y, industrialPI.cmd) annotation(
        Line(points = {{106, 68}, {106, 53}}, color = {255, 0, 255}));
  connect(ON.actionOUT, ON_OFF.mergeIN[1]) annotation(
        Line(points = {{0, 42}, {4, 42}, {4, 106}, {106, 106}, {106, 88}}));
  connect(OFF.actionOUT, ON_OFF.mergeIN[2]) annotation(
        Line(points = {{-2, -38}, {8, -38}, {8, 102}, {106, 102}, {106, 88}}));
    end HeatingAndStirring2;
  end Utilities;

  model heater
    SFC.SFCelements.Transition t6 annotation(
      Placement(visible = true, transformation(origin = {-90, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Action valve1open annotation(
      Placement(visible = true, transformation(origin = {-50, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Step heaterON annotation(
      Placement(visible = true, transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.InitialStep idle annotation(
      Placement(visible = true, transformation(origin = {-90, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Step empty_tank annotation(
      Placement(visible = true, transformation(origin = {-90, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Action ON(qualifierType = SFC.Types.Qualifier.P) annotation(
      Placement(visible = true, transformation(origin = {-48, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Condition c1(y = start.y) annotation(
      Placement(visible = true, transformation(origin = {-50, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Transition t1 annotation(
      Placement(visible = true, transformation(origin = {-90, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Step fill_tank annotation(
      Placement(visible = true, transformation(origin = {-90, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Condition c2(y = tank.levelSensor > 30) annotation(
      Placement(visible = true, transformation(origin = {-31, 42}, extent = {{-21, -8}, {21, 8}}, rotation = 0)));
    SFC.SFCelements.Condition c6(y = tank.levelSensor < 0.01) annotation(
      Placement(visible = true, transformation(origin = {-21, -48}, extent = {{-39, -12}, {39, 12}}, rotation = 0)));
    SFC.SFCelements.Action valve2open annotation(
      Placement(visible = true, transformation(origin = {4, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Transition t2 annotation(
      Placement(visible = true, transformation(origin = {-90, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.BooleanPulse start(period = 100, startTime = 10, width = 15) annotation(
      Placement(visible = true, transformation(origin = {-148, 114}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Transition t5 annotation(
      Placement(visible = true, transformation(origin = {-90, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SFC.SFCelements.Condition c5(y = HeatingAndStirring.y) annotation(
      Placement(visible = true, transformation(origin = {-36, -7}, extent = {{-24, -11}, {24, 11}}, rotation = 0)));
  SFC.ContinuousSys.ContinuousTests.HeaterUsingSubSFC.Utilities.HeatingAndStirring HeatingAndStirring annotation(
      Placement(visible = true, transformation(origin = {-6, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.StateGraph.Examples.Utilities.valve valveIN annotation(
      Placement(visible = true, transformation(origin = {42, 70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.StateGraph.Examples.Utilities.valve valveOUT annotation(
      Placement(visible = true, transformation(origin = {80, -20}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.StateGraph.Examples.Utilities.Tank tank(a = 0.03) annotation(
      Placement(visible = true, transformation(origin = {59, 23}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
  Modelica.StateGraph.Examples.Utilities.Source source(maxflow = 0.3) annotation(
      Placement(visible = true, transformation(origin = {42, 92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fill_tank.OUT, t2.IN) annotation(
      Line(points = {{-90, 50}, {-90, 50}, {-90, 42}, {-90, 42}}));
    connect(t1.C, c1.y) annotation(
      Line(points = {{-78, 80}, {-60, 80}, {-60, 80}, {-62, 80}}, color = {255, 0, 255}));
    connect(idle.OUT, t1.IN) annotation(
      Line(points = {{-90, 90}, {-90, 90}, {-90, 82}, {-90, 82}}));
    connect(t2.OUT, heaterON.IN) annotation(
      Line(points = {{-90, 38}, {-90, 38}, {-90, 30}, {-90, 30}}));
    connect(t1.OUT, fill_tank.IN) annotation(
      Line(points = {{-90, 78}, {-90, 78}, {-90, 70}, {-90, 70}}));
    connect(t6.C, c6.y) annotation(
      Line(points = {{-78, -46}, {-70, -46}, {-70, -48}, {-64, -48}}, color = {255, 0, 255}));
    connect(heaterON.X, ON.phase_active) annotation(
      Line(points = {{-78, 20}, {-60, 20}}, color = {255, 0, 255}));
  connect(empty_tank.X, valve2open.phase_active) annotation(
      Line(points = {{-78, -26}, {-8, -26}}, color = {255, 0, 255}));
    connect(empty_tank.OUT, t6.IN) annotation(
      Line(points = {{-90, -36}, {-90, -44}}));
    connect(t6.OUT, idle.IN) annotation(
      Line(points = {{-90, -48}, {-90, -56}, {-118, -56}, {-118, 116}, {-90, 116}, {-90, 110}}));
    connect(t2.C, c2.y) annotation(
      Line(points = {{-78, 40}, {-70, 40}, {-70, 42}, {-54, 42}}, color = {255, 0, 255}));
    connect(fill_tank.X, valve1open.phase_active) annotation(
      Line(points = {{-78, 60}, {-62, 60}, {-62, 60}, {-60, 60}}, color = {255, 0, 255}));
    connect(t5.OUT, empty_tank.IN) annotation(
      Line(points = {{-90, -8}, {-90, -16}}));
    connect(t5.C, c5.y) annotation(
      Line(points = {{-78, -6}, {-70, -6}, {-70, -7}, {-62, -7}}, color = {255, 0, 255}));
    connect(heaterON.OUT, t5.IN) annotation(
      Line(points = {{-90, 10}, {-90, -4}}));
    connect(ON.actionBoolean, HeatingAndStirring.u) annotation(
      Line(points = {{-36, 22}, {-14, 22}, {-14, 22}, {-14, 22}}, color = {255, 0, 255}));
  connect(tank.outflow1, valveOUT.outflow1) annotation(
      Line(points = {{80, 7}, {80, -15}}));
  connect(source.outflow1, valveIN.outflow1) annotation(
      Line(points = {{42, 87}, {42, 75}}));
  connect(valveIN.inflow1, tank.inflow1) annotation(
      Line(points = {{42, 65}, {41.5, 65}, {41.5, 46}}));
  connect(valve1open.actionBoolean, valveIN.valveControl) annotation(
      Line(points = {{-38, 62}, {30, 62}, {30, 70}, {34, 70}, {34, 70}}, color = {255, 0, 255}));
  connect(valve2open.actionBoolean, valveOUT.valveControl) annotation(
      Line(points = {{16, -24}, {52, -24}, {52, -20}, {88, -20}}, color = {255, 0, 255}));
  end heater;
equation

end HeaterUsingSubSFC;
