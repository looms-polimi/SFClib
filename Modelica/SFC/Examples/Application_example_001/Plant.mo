within SFC.Examples.Application_example_001;

model Plant
  Modelica.Fluid.Valves.ValveDiscrete V_bulk_in(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 10000, m_flow_nominal = 1) annotation(
    Placement(visible = true, transformation(origin = {-41, 169}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Modelica.Fluid.Vessels.OpenTank Tank_bulk(redeclare package Medium = Medium, T_start = system.T_ambient, crossArea = 0.1, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, height = 2, level_start = 0.05, massDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, nPorts = 2, portsData = {Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 0, zeta_out = 0, zeta_in = 1), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 2, zeta_out = 0, zeta_in = 1)}, use_HeatTransfer = true) annotation(
    Placement(visible = true, transformation(origin = {10, 99}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Fluid.Valves.ValveDiscrete V_bulk_2mix(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 10000, m_flow_nominal = 0.5) annotation(
    Placement(visible = true, transformation(origin = {10, 55}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Fluid.Valves.ValveDiscrete V_product_out(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 10000, m_flow_nominal = 2) annotation(
    Placement(visible = true, transformation(origin = {-21, -159}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Fluid.Vessels.OpenTank Tank_mix(redeclare package Medium = Medium, T_start = system.T_ambient, crossArea = 0.1, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, height = 1, level_start = 0.001, massDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, nPorts = 6, portsData = {Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 1, zeta_out = 0, zeta_in = 1), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 1, zeta_out = 0, zeta_in = 1), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 1, zeta_out = 0, zeta_in = 1), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 1, zeta_out = 0, zeta_in = 1), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 0, zeta_out = 0, zeta_in = 1), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 0, zeta_out = 0, zeta_in = 1)}) annotation(
    Placement(visible = true, transformation(extent = {{9, -84}, {49, -44}}, rotation = 0)));
  Modelica.Fluid.Sources.Boundary_pT Storage_product(redeclare package Medium = Medium, nPorts = 1, p = system.p_ambient, T = system.T_ambient) annotation(
    Placement(visible = true, transformation(extent = {{-80, -169}, {-60, -149}}, rotation = 0)));
  Modelica.Fluid.Sources.Boundary_pT Supply_bulk(redeclare package Medium = Medium, T = system.T_ambient, nPorts = 1, p = 110000) annotation(
    Placement(visible = true, transformation(origin = {-71, 169}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Fluid.System system annotation(
    Placement(visible = true, transformation(extent = {{-160, 160}, {-140, 180}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow H_bulk annotation(
    Placement(visible = true, transformation(origin = {-36, 120}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Sources.Boundary_pT Supply_additive_1(redeclare package Medium = Medium, T = system.T_ambient, nPorts = 1, p = 110000) annotation(
    Placement(visible = true, transformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Sources.Boundary_pT Supply_additive_2(redeclare package Medium = Medium, T = system.T_ambient, nPorts = 1, p = 150000) annotation(
    Placement(visible = true, transformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Valves.ValveDiscrete V_additive_1_in(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 10000, m_flow_nominal = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-20, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Fluid.Valves.ValveDiscrete V_additive_2_in(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 10000, m_flow_nominal = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-45, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Fluid.Valves.ValveDiscrete V_cleaner_out(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 10000, m_flow_nominal = 0.5) annotation(
    Placement(visible = true, transformation(origin = {-41, -115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Fluid.Valves.ValveDiscrete V_cleaner_in(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 10000, m_flow_nominal = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-45, -50}, extent = {{10, 10}, {-10, -10}}, rotation = -90)));
  Modelica.Fluid.Sources.Boundary_pT Exhaust_cleaner(redeclare package Medium = Medium, T = system.T_ambient, nPorts = 1, p = system.p_ambient) annotation(
    Placement(visible = true, transformation(extent = {{-81, -125}, {-61, -105}}, rotation = 0)));
  Modelica.Fluid.Sources.Boundary_pT Supply_cleaner(redeclare package Medium = Medium, T = system.T_ambient, nPorts = 1, p = 130000) annotation(
    Placement(visible = true, transformation(extent = {{-81, -80}, {-61, -60}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean(variable_name = "cmd_V_bulk_in") annotation(
    Placement(visible = true, transformation(origin = {-141, 146}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_real read_real(variable_name = "cmd_heater_bulk") annotation(
    Placement(visible = true, transformation(origin = {-141, 120}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Write_real write_real(variable_name = "Tank_bulk_T") annotation(
    Placement(visible = true, transformation(origin = {130, 124}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Write_boolean write_boolean(variable_name = "Tank_bulk_LSH") annotation(
    Placement(visible = true, transformation(origin = {130, 104}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean1(variable_name = "cmd_V_bulk_2mix") annotation(
    Placement(visible = true, transformation(origin = {-140, 55}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean2(variable_name = "cmd_V_additive_1_in") annotation(
    Placement(visible = true, transformation(origin = {-140, 10}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean3(variable_name = "cmd_V_additive_2_in") annotation(
    Placement(visible = true, transformation(origin = {-140, -10}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean4(variable_name = "cmd_V_cleaner_in") annotation(
    Placement(visible = true, transformation(origin = {-140, -50}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean5(variable_name = "cmd_V_cleaner_out") annotation(
    Placement(visible = true, transformation(origin = {-140, -90}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Read_boolean read_boolean6(variable_name = "cmd_V_product_out") annotation(
    Placement(visible = true, transformation(origin = {-140, -140}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Tbulk(y = Tank_bulk.heatTransfer.Ts[1]) annotation(
    Placement(visible = true, transformation(origin = {70, 124}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression LSH_bulk(y = Tank_bulk.level > 1.1) annotation(
    Placement(visible = true, transformation(origin = {70, 104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression LSL_bulk(y = Tank_bulk.level > 0.9) annotation(
    Placement(visible = true, transformation(origin = {70, 84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression LSE_mix(y = Tank_mix.level < .001) annotation(
    Placement(visible = true, transformation(origin = {70, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Write_boolean write_boolean1(variable_name = "Tank_bulk_LSL") annotation(
    Placement(visible = true, transformation(origin = {130, 84}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  SFC.SFCio.Write_boolean write_boolean2(variable_name = "Tank_mix_LSE") annotation(
    Placement(visible = true, transformation(origin = {130, 44}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter L01(limitsAtInit = true, uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {-78, 120}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pmax(k = 10000) annotation(
    Placement(visible = true, transformation(origin = {-58, 120}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Gloss(G = 200) annotation(
    Placement(visible = true, transformation(origin = {-32, 99}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature Tamb(T = system.T_ambient) annotation(
    Placement(visible = true, transformation(origin = {-78, 99}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression LSS_bulk(y = Tank_bulk.level > 0.88) annotation(
    Placement(visible = true, transformation(origin = {70, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Write_boolean write_boolean3(variable_name = "Tank_bulk_LSS") annotation(
    Placement(visible = true, transformation(origin = {130, 64}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression LSH_mix(y = Tank_mix.level > 0.6) annotation(
    Placement(visible = true, transformation(origin = {70, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.SFCio.Write_boolean write_boolean4(variable_name = "Tank_mix_LSH") annotation(
    Placement(visible = true, transformation(origin = {130, 24}, extent = {{-20, -10}, {20, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Not not1 annotation(
    Placement(visible = true, transformation(origin = {95, 84}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
equation
  connect(Supply_bulk.ports[1], V_bulk_in.port_a) annotation(
    Line(points = {{-61, 169}, {-51, 169}}, color = {0, 127, 255}));
  connect(V_product_out.port_b, Storage_product.ports[1]) annotation(
    Line(points = {{-31, -159}, {-60, -159}}, color = {0, 127, 255}));
  connect(Tank_bulk.ports[1], V_bulk_2mix.port_a) annotation(
    Line(points = {{10, 79}, {10, 65}}, color = {0, 127, 255}));
  connect(V_bulk_in.port_b, Tank_bulk.ports[2]) annotation(
    Line(points = {{-31, 169}, {-10, 169}, {-10, 106.5}, {10, 106.5}, {10, 79}}, color = {0, 127, 255}));
  connect(V_bulk_2mix.port_b, Tank_mix.ports[1]) annotation(
    Line(points = {{10, 45}, {10, -84}, {29, -84}}));
  connect(Supply_additive_1.ports[1], V_additive_1_in.port_a) annotation(
    Line(points = {{-60, 70}, {-20, 70}, {-20, 20}}, color = {0, 127, 255}));
  connect(Supply_additive_2.ports[1], V_additive_2_in.port_a) annotation(
    Line(points = {{-60, 30}, {-45, 30}, {-45, 0}}, color = {0, 127, 255}));
  connect(V_additive_1_in.port_b, Tank_mix.ports[2]) annotation(
    Line(points = {{-20, 0}, {-20, -10}, {10, -10}, {10, -84}, {29, -84}}, color = {0, 127, 255}));
  connect(V_additive_2_in.port_b, Tank_mix.ports[3]) annotation(
    Line(points = {{-45, -20}, {-45, -30}, {10, -30}, {10, -84}, {29, -84}}, color = {0, 127, 255}));
  connect(V_cleaner_in.port_b, Tank_mix.ports[4]) annotation(
    Line(points = {{-45, -40}, {-45, -30}, {10, -30}, {10, -84}, {29, -84}}, color = {0, 127, 255}));
  connect(Supply_cleaner.ports[1], V_cleaner_in.port_a) annotation(
    Line(points = {{-61, -70}, {-45, -70}, {-45, -60}}, color = {0, 127, 255}));
  connect(Exhaust_cleaner.ports[1], V_cleaner_out.port_b) annotation(
    Line(points = {{-61, -115}, {-51, -115}}, color = {0, 127, 255}));
  connect(V_cleaner_out.port_a, Tank_mix.ports[5]) annotation(
    Line(points = {{-31, -115}, {29, -115}, {29, -84}}, color = {0, 127, 255}));
  connect(V_product_out.port_a, Tank_mix.ports[6]) annotation(
    Line(points = {{-11, -159}, {29, -159}, {29, -84}}, color = {0, 127, 255}));
  connect(H_bulk.port, Tank_bulk.heatPort) annotation(
    Line(points = {{-26, 120}, {-20, 120}, {-20, 99}, {-10, 99}}, color = {191, 0, 0}));
  connect(read_boolean.y, V_bulk_in.open) annotation(
    Line(points = {{-119, 146}, {-41, 146}, {-41, 161}}, color = {255, 0, 255}));
  connect(read_boolean1.y, V_bulk_2mix.open) annotation(
    Line(points = {{-118, 55}, {2, 55}}, color = {255, 0, 255}));
  connect(read_boolean2.y, V_additive_1_in.open) annotation(
    Line(points = {{-118, 10}, {-28, 10}}, color = {255, 0, 255}));
  connect(read_boolean3.y, V_additive_2_in.open) annotation(
    Line(points = {{-118, -10}, {-53, -10}}, color = {255, 0, 255}));
  connect(read_boolean4.y, V_cleaner_in.open) annotation(
    Line(points = {{-118, -50}, {-53, -50}}, color = {255, 0, 255}));
  connect(read_boolean5.y, V_cleaner_out.open) annotation(
    Line(points = {{-118, -90}, {-41, -90}, {-41, -107}}, color = {255, 0, 255}));
  connect(read_boolean6.y, V_product_out.open) annotation(
    Line(points = {{-118, -140}, {-21, -140}, {-21, -151}}, color = {255, 0, 255}));
  connect(Tbulk.y, write_real.u) annotation(
    Line(points = {{81, 124}, {108, 124}}, color = {0, 0, 127}));
  connect(LSE_mix.y, write_boolean2.u) annotation(
    Line(points = {{81, 44}, {108, 44}}, color = {255, 0, 255}));
  connect(LSH_bulk.y, write_boolean.u) annotation(
    Line(points = {{81, 104}, {108, 104}}, color = {255, 0, 255}));
  connect(read_real.y, L01.u) annotation(
    Line(points = {{-119, 120}, {-84, 120}}, color = {0, 0, 127}));
  connect(L01.y, Pmax.u) annotation(
    Line(points = {{-72.5, 120}, {-64, 120}}, color = {0, 0, 127}));
  connect(Pmax.y, H_bulk.Q_flow) annotation(
    Line(points = {{-52.5, 120}, {-46, 120}}, color = {0, 0, 127}));
  connect(Tank_bulk.heatPort, Gloss.port_b) annotation(
    Line(points = {{-10, 99}, {-26, 99}}, color = {191, 0, 0}));
  connect(Tamb.port, Gloss.port_a) annotation(
    Line(points = {{-73, 99}, {-38, 99}}, color = {191, 0, 0}));
  connect(LSS_bulk.y, write_boolean3.u) annotation(
    Line(points = {{81, 64}, {108, 64}}, color = {255, 0, 255}));
  connect(LSH_mix.y, write_boolean4.u) annotation(
    Line(points = {{81, 24}, {108, 24}}, color = {255, 0, 255}));
  connect(LSL_bulk.y, not1.u) annotation(
    Line(points = {{81, 84}, {89, 84}}, color = {255, 0, 255}));
  connect(not1.y, write_boolean1.u) annotation(
    Line(points = {{100.5, 84}, {107.5, 84}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-200, -200}, {200, 200}}, grid = {1, 1}), graphics = {Line(origin = {-71, -72}, points = {{0, 0}})}),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(extent = {{-9, -5}, {-9, -5}}, textString = "P", textStyle = {TextStyle.Bold}), Rectangle(origin = {0.5, -0.5}, lineColor = {143, 89, 2}, fillColor = {254, 236, 156}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-100, 100}, {100, -100}}, radius = 40), Text(origin = {-0.5, 0}, lineColor = {143, 89, 2}, extent = {{-98, 99}, {99, -99}}, textString = "P")}),
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Plant;