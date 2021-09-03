within SFC.Interfaces;

connector TransitionOutput "Output of a Transition block"
  output Boolean fire;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Polygon(origin = {0, 50}, fillPattern = FillPattern.Solid, points = {{-100, -50}, {-38, -150}, {38, -150}, {100, -50}, {-100, -50}}), Polygon(origin = {0, -60}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, points = {{-42, 60}, {0, -40}, {40, 60}, {-42, 60}})}, coordinateSystem(initialScale = 0.1)),
    Documentation(info = "<html><head></head><body><div>Connector with one Boolean output signal.</div></body></html>"));
end TransitionOutput;
