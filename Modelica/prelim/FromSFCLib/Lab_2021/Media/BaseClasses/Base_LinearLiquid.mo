within FromSFCLib.Lab_2021.Media.BaseClasses;

partial model Base_LinearLiquid
  extends Modelica.Icons.MaterialProperty;
  parameter BulkModulus K;
  parameter CubicExpansionCoefficient alpha;
  parameter Pressure p0;
  parameter Temperature T0;
  parameter Density ro0;
  parameter SpecificHeatCapacity c0;
  input Pressure p;
  input Temperature T;
  Density ro;
  SpecificEnthalpy h;
equation
  ro = K * ro0 / (((T - T0) * alpha + 1) * (p0 - p + K));
  h = c0 * T;
end Base_LinearLiquid;