within SFC.Interfaces;

connector TransitionInput "Input of a Transition block"
  input Boolean active;
  output Boolean fire;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Polygon(origin = {0, 50}, fillPattern = FillPattern.Solid, points = {{-100, -50}, {-40, 50}, {40, 50}, {100, -50}, {-100, -50}}), Polygon(origin = {0, 60}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, points = {{-40, 40}, {0, -60}, {40, 40}, {-40, 40}})}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><div>Connector with one Boolean input signal and one Boolean output signal.</div></body></html>"));
end TransitionInput;
