within SFC.Tests;

model test_Tcycle "Action with S qualifier - connected to an Initial Step"
SFC.BasicBlocks.Condition C00_01(y = S00.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-74, 232}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C01_02(y = S01.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-71, 172}, extent = {{-19, -10}, {19, 10}}, rotation = 0)));
 SFC.BasicBlocks.Condition C02_00(y = S02.t > 1) annotation(
    Placement(visible = true, transformation(origin = {-69, 110}, extent = {{-17, -10}, {17, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C21_22(y = true) annotation(
    Placement(visible = true, transformation(origin = {-68, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C22_20(y = true) annotation(
    Placement(visible = true, transformation(origin = {-68, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C10_11(y = S10.t > 2) annotation(
    Placement(visible = true, transformation(origin = {87, 232}, extent = {{-19, -10}, {19, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C11_12(y = S11.t > 1) annotation(
    Placement(visible = true, transformation(origin = {90, 170}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition C12_10(y = S12.t > 1) annotation(
    Placement(visible = true, transformation(origin = {90, 109}, extent = {{-20, -9}, {20, 9}}, rotation = 0)));
  SFC.BasicBlocks.Condition C20_21(y = S20.t > 2) annotation(
    Placement(visible = true, transformation(origin = {-66, 12}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
 SFC.BasicBlocks.Step S00(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-133, 269}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T00_01 annotation(
    Placement(visible = true, transformation(origin = {-138, 230}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Step S01 annotation(
    Placement(visible = true, transformation(origin = {-133, 203}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T02_00 annotation(
    Placement(visible = true, transformation(origin = {-139, 105}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 SFC.BasicBlocks.Step S02 annotation(
    Placement(visible = true, transformation(origin = {-133, 139}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T01_02 annotation(
    Placement(visible = true, transformation(origin = {-138, 168}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Step S10(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {25, 267}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T10_11(Tcycle = 1) annotation(
    Placement(visible = true, transformation(origin = {23, 235}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 SFC.BasicBlocks.Step S11 annotation(
    Placement(visible = true, transformation(origin = {27, 205}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Step S12 annotation(
    Placement(visible = true, transformation(origin = {25, 139}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T11_12(Tcycle = 1) annotation(
    Placement(visible = true, transformation(origin = {26, 168}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Transition T12_10(Tcycle = 1) annotation(
    Placement(visible = true, transformation(origin = {26, 104}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Step S21 annotation(
    Placement(visible = true, transformation(origin = {-131, -17}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T20_21 annotation(
    Placement(visible = true, transformation(origin = {-135, 13}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 SFC.BasicBlocks.Step S22 annotation(
    Placement(visible = true, transformation(origin = {-133, -83}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Step S20(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {-133, 45}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T22_20 annotation(
    Placement(visible = true, transformation(origin = {-132, -118}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Transition T21_22 annotation(
    Placement(visible = true, transformation(origin = {-132, -54}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Condition condition(y = S30.t > 2) annotation(
    Placement(visible = true, transformation(origin = {138, -10}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
 SFC.BasicBlocks.Step S30(initialStep = true) annotation(
    Placement(visible = true, transformation(origin = {71, 23}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Step S31 annotation(
    Placement(visible = true, transformation(origin = {73, -39}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Transition T30_31(Tcycle = 1)  annotation(
    Placement(visible = true, transformation(origin = {69, -9}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
 SFC.BasicBlocks.Condition condition1(y = true) annotation(
    Placement(visible = true, transformation(origin = {136, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 SFC.BasicBlocks.Transition T32_30(Tcycle = 1)  annotation(
    Placement(visible = true, transformation(origin = {72, -140}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Transition T31_32(Tcycle = 1)  annotation(
    Placement(visible = true, transformation(origin = {72, -76}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
 SFC.BasicBlocks.Step S32 annotation(
    Placement(visible = true, transformation(origin = {71, -105}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
 SFC.BasicBlocks.Condition condition2(y = true) annotation(
    Placement(visible = true, transformation(origin = {136, -132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(S02.OUT, T02_00.IN) annotation(
    Line(points = {{-133, 128}, {-133, 121}, {-139, 121}, {-139, 109}}));
  connect(S01.OUT, T01_02.IN) annotation(
    Line(points = {{-133, 192}, {-133, 184}, {-138, 184}, {-138, 172}}));
  connect(S00.OUT, T00_01.IN) annotation(
    Line(points = {{-133, 258}, {-133, 248}, {-138, 248}, {-138, 234}}));
  connect(T00_01.OUT, S01.IN) annotation(
    Line(points = {{-138, 226.4}, {-138, 223.8}, {-133, 223.8}, {-133, 214.8}}));
  connect(T01_02.OUT, S02.IN) annotation(
    Line(points = {{-138, 164.4}, {-138, 160.6}, {-133, 160.6}, {-133, 150.8}}));
  connect(T02_00.OUT, S00.IN) annotation(
    Line(points = {{-139, 101.2}, {-139, 86.2}, {-178, 86.2}, {-178, 300.2}, {-132, 300.2}, {-132, 280.2}}));
  connect(S10.OUT, T10_11.IN) annotation(
    Line(points = {{25, 256}, {23, 256}, {23, 238}}));
  connect(T10_11.OUT, S11.IN) annotation(
    Line(points = {{23, 231.2}, {27, 231.2}, {27, 215.2}}));
  connect(S11.OUT, T11_12.IN) annotation(
    Line(points = {{27, 194}, {25, 194}, {25, 172}}));
  connect(T11_12.OUT, S12.IN) annotation(
    Line(points = {{26, 164.4}, {25, 164.4}, {25, 150.4}}));
  connect(S12.OUT, T12_10.IN) annotation(
    Line(points = {{25, 128}, {26, 128}, {26, 108}}));
  connect(T12_10.OUT, S10.IN) annotation(
    Line(points = {{26, 100.4}, {26, 70.4}, {-30, 70.4}, {-30, 298.4}, {26, 298.4}, {26, 278.4}}));
  connect(T00_01.C, C00_01.y) annotation(
    Line(points = {{-116.4, 230}, {-96.4, 230}, {-96.4, 232}}, color = {255, 0, 255}));
  connect(T01_02.C, C01_02.y) annotation(
    Line(points = {{-116.4, 168}, {-92.4, 168}, {-92.4, 172}}, color = {255, 0, 255}));
  connect(T02_00.C, C02_00.y) annotation(
    Line(points = {{-116.2, 105}, {-88.2, 105}, {-88.2, 109}}, color = {255, 0, 255}));
  connect(T10_11.C, C10_11.y) annotation(
    Line(points = {{45.8, 235}, {63.8, 235}, {63.8, 231}, {65.8, 231}}, color = {255, 0, 255}));
  connect(T11_12.C, C11_12.y) annotation(
    Line(points = {{47.6, 168}, {59.6, 168}, {59.6, 170}, {67.6, 170}}, color = {255, 0, 255}));
  connect(T12_10.C, C12_10.y) annotation(
    Line(points = {{47.6, 104}, {67.6, 104}, {67.6, 110}}, color = {255, 0, 255}));
  connect(S20.OUT, T20_21.IN) annotation(
    Line(points = {{-132, 34}, {-134, 34}, {-134, 16}}));
  connect(T20_21.OUT, S21.IN) annotation(
    Line(points = {{-134, 10}, {-130, 10}, {-130, -6}}));
  connect(S21.OUT, T21_22.IN) annotation(
    Line(points = {{-130, -28}, {-132, -28}, {-132, -50}}));
  connect(T21_22.OUT, S22.IN) annotation(
    Line(points = {{-132, -58}, {-132, -72}}));
  connect(S22.OUT, T22_20.IN) annotation(
    Line(points = {{-132, -94}, {-132, -114}}));
  connect(T22_20.OUT, S20.IN) annotation(
    Line(points = {{-132, -122}, {-132, -134}, {-196, -134}, {-196, 68}, {-132, 68}, {-132, 56}}));
  connect(T20_21.C, C20_21.y) annotation(
    Line(points = {{-112, 14}, {-88, 14}, {-88, 12}}, color = {255, 0, 255}));
  connect(T21_22.C, C21_22.y) annotation(
    Line(points = {{-110, -54}, {-92, -54}, {-92, -48}, {-78, -48}}, color = {255, 0, 255}));
  connect(T22_20.C, C22_20.y) annotation(
    Line(points = {{-110, -118}, {-84, -118}, {-84, -110}, {-78, -110}}, color = {255, 0, 255}));
 connect(S30.OUT, T30_31.IN) annotation(
    Line(points = {{71, 12}, {69, 12}, {69, -6}}));
 connect(T32_30.OUT, S30.IN) annotation(
    Line(points = {{72, -143.6}, {72, -155.6}, {8, -155.6}, {8, 46.4}, {72, 46.4}, {72, 34.4}}));
 connect(T31_32.OUT, S32.IN) annotation(
    Line(points = {{72, -79.6}, {72, -93.6}}));
 connect(T30_31.C, condition.y) annotation(
    Line(points = {{91.8, -9}, {115.8, -9}, {115.8, -11}}, color = {255, 0, 255}));
 connect(S31.OUT, T31_32.IN) annotation(
    Line(points = {{73, -50}, {71, -50}, {71, -72}}));
 connect(T31_32.C, condition1.y) annotation(
    Line(points = {{93.6, -76}, {111.6, -76}, {111.6, -70}, {125.6, -70}}, color = {255, 0, 255}));
 connect(T32_30.C, condition2.y) annotation(
    Line(points = {{93.6, -140}, {119.6, -140}, {119.6, -132}, {125.6, -132}}, color = {255, 0, 255}));
 connect(T30_31.OUT, S31.IN) annotation(
    Line(points = {{69, -12.8}, {73, -12.8}, {73, -28.8}}));
 connect(S32.OUT, T32_30.IN) annotation(
    Line(points = {{71, -116}, {71, -136}}));
protected
  annotation(
    Documentation(info = "<html><head></head><body><div><b>DA CAMBIARE --- test con e senza Tc, con e senza due condizioni true</b></div><div><br></div><div>Action&nbsp;<b>A</b>&nbsp;is connected to Step&nbsp;<u>S0</u>. When S0 becomes active, action A is set and remains set until the end of the simulation. Being&nbsp;S0&nbsp;the initial Step, both A and S0 are active from the beginning of the simulation.</div><div><div><br></div>
    
<img width=\"400\" src=\"modelica://SFC/Images/Test/S1.png\"><br>

<p></p>
</div></body></html>"),
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})));
end test_Tcycle;