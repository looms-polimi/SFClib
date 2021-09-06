within SFC.Lab_2021.Media;

model LiquidWater
  extends BaseClasses.Base_LinearLiquid(
    K=2.2e9,
    alpha=2.1e-4,
    p0=101325,
    T0=273.15+20,
    ro0=1000,
    c0=4186
  );
end LiquidWater;