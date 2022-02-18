within SFC.Examples.SFC_and_CT_systems.TanksControlSys;

model Complete_System
  extends Modelica.Icons.Example;
  extends Modelica.Icons.Example;
  package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater;
  Modelica.Fluid.Valves.ValveDiscrete valve1(redeclare package Medium = Medium, m_flow_nominal = 40, dp_nominal = 100000) annotation(
    Placement(visible = true, transformation(origin = {40, 91}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Modelica.Fluid.Vessels.OpenTank tank1(level_start = 0.05, redeclare package Medium = Medium, crossArea = 6, height = 4, nPorts = 2, portsData = {Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 4, zeta_out = 0, zeta_in = 1), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 0.01, zeta_out = 0, zeta_in = 1)}, T_start = system.T_ambient, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, massDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial) annotation(
    Placement(visible = true, transformation(origin = {78, 59}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Modelica.Fluid.Valves.ValveDiscrete valve2(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 1, m_flow_nominal = 100) annotation(
    Placement(visible = true, transformation(origin = {78, 26}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Fluid.Valves.ValveDiscrete valve3(redeclare package Medium = Medium, dp_nominal(displayUnit = "Pa") = 1, m_flow_nominal = 10) annotation(
    Placement(visible = true, transformation(origin = {79, -51}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Fluid.Vessels.OpenTank tank2(level_start = 0.05, redeclare package Medium = Medium, height = 5, crossArea = 6, nPorts = 2, portsData = {Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 5, zeta_out = 0, zeta_in = 1), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter = 0.2, height = 0, zeta_out = 0, zeta_in = 1)}, T_start = system.T_ambient, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, massDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial) annotation(
    Placement(visible = true, transformation(origin = {78.5, -16.5}, extent = {{-16.5, -16.5}, {16.5, 16.5}}, rotation = 0)));
  Modelica.Fluid.Sources.Boundary_pT ambient(redeclare package Medium = Medium, nPorts = 1, p = system.p_ambient, T = system.T_ambient) annotation(
    Placement(visible = true, transformation(origin = {79, -76},extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Fluid.Sources.Boundary_pT reservoir(redeclare package Medium = Medium, nPorts = 1, T = system.T_ambient, p = 2500000) annotation(
    Placement(visible = true, transformation(origin = {7, 91}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Fluid.System system annotation(
    Placement(visible = true, transformation(extent = {{-100, 80}, {-80, 100}}, rotation = 0)));
equation
  connect(reservoir.ports[1], valve1.port_a) annotation(
    Line(points = {{17, 91}, {30, 91}}, color = {0, 127, 255}));
  connect(valve3.port_b, ambient.ports[1]) annotation(
    Line(points = {{79, -61}, {78.5, -61}, {78.5, -68}, {78.75, -68}, {78.75, -66}, {79, -66}}, color = {0, 127, 255}));
  connect(tank2.ports[2], valve3.port_a) annotation(
    Line(points = {{78.5, -33}, {78.5, -37}, {79, -37}, {79, -41}}, color = {0, 127, 255}));
  connect(valve2.port_b, tank2.ports[1]) annotation(
    Line(points = {{78, 16}, {78, -7.5}, {78.5, -7.5}, {78.5, -33}}, color = {0, 127, 255}));
  connect(valve1.port_b, tank1.ports[1]) annotation(
    Line(points = {{50, 91}, {50, 91.25}, {79, 91.25}, {79, 69.5}, {77, 69.5}, {77, 42}, {78, 42}}, color = {0, 127, 255}));
  connect(tank1.ports[2], valve2.port_a) annotation(
    Line(points = {{78, 42}, {78, 36}}, color = {0, 127, 255}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1})),
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1})));
end Complete_System;