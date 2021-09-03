within SFC.Interfaces;

connector StepOutput "Output of a Step block"
  input Boolean fire;
  output Boolean active;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Polygon(origin = {0, 50}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, points = {{-100, -50}, {-38, -150}, {38, -150}, {100, -50}, {-100, -50}}), Polygon(origin = {0, -60}, fillColor = {35, 4, 4}, fillPattern = FillPattern.Solid, points = {{-42, 60}, {0, -40}, {40, 60}, {-42, 60}})}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><div>Connector with one Boolean input signal and one Boolean output signal.</div></body></html>"));
end StepOutput;
