within SFC.Interfaces;

connector actionIN "Input to acquire actions from an Action block"
input Boolean action;
input Boolean phase;
  //input SFC.Types.Qualifier qualif;
  annotation(
    Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon( fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}, {-100, 100}}), Polygon(origin = {-30, 16}, fillPattern = FillPattern.Solid, points = {{-50, 44}, {-50, -76}, {78, -16}, {-50, 44}, {-50, 44}})}),
    Documentation(info = "<html><head></head><body><div>Connector with two Boolean input signals, used to connect a mergeAction block to an Action block.</div><div><br></div></body></html>"));
end actionIN;
