within SFC.Interfaces;

connector StepInput "Input of a Step block"
  input Boolean fire;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Polygon(origin = {0, 50}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, points = {{-100, -50}, {-40, 50}, {40, 50}, {100, -50}, {-100, -50}}), Polygon(origin = {0, 60}, fillColor = {35, 4, 4}, fillPattern = FillPattern.Solid, points = {{-40, 40}, {0, -60}, {40, 40}, {-40, 40}})}, coordinateSystem(initialScale = 0.1)),
    Documentation(info = "<html><head></head><body><div style=\"text-align: justify;\">Connector with one Boolean input signal.</div></body></html>"));
end StepInput;
