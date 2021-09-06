within SFC.Lab_2021.Media;

model LinearLiquid
  parameter BulkModulus K=2.2e9;
  parameter CubicExpansionCoefficient alpha=2.1e-4;
  parameter Pressure p0=101325;
  parameter Temperature T0=273.15+20;
  parameter Density ro0=1000;
  parameter SpecificHeatCapacity c0=4186;
  input Pressure p; 
  input Temperature T;
  Density ro;
  SpecificEnthalpy h;
equation
  ro = (K*ro0)/(((T-T0)*alpha+1)*(p0-p+K));
  h  = c0*T;
end LinearLiquid;