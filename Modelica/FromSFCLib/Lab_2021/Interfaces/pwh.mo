within FromSFCLib.Lab_2021.Interfaces;

connector pwh
  Pressure p;
  flow MassFlowRate w;
  stream SpecificEnthalpy h;
  annotation(
    Icon(graphics = {Ellipse(fillColor = {52, 101, 164}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}})}));
end pwh;