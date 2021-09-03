within SFC.Interfaces;

connector actionOUT "Output of an Action block"
output Boolean action;
output Boolean phase;

  annotation(
    Icon(graphics = {Polygon( fillPattern = FillPattern.Solid, points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}, {-100, 100}}),  Polygon(origin = {-30, 16}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, points = {{-50, 44}, {-50, -76}, {78, -16}, {-50, 44}, {-50, 44}})}, coordinateSystem(initialScale = 0.1)),
    Documentation(info = "<html><head></head><body>Connector with two Boolean output signals, is used to connect the Action block to a mergeAction block.</body></html>"));
end actionOUT;
