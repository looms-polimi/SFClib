within SFC.Interfaces;

connector StepOUT "Output of a Step to the related action"
output Boolean phase_act "indicate if the Step is active";
output Boolean InitialStep "indicate if the Step is an Initial Step";

  annotation(
    Icon(graphics = {Polygon( fillPattern = FillPattern.Solid, points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}, {-100, 100}}),  Polygon(origin = {-30, 16}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, points = {{-50, 44}, {-50, -76}, {78, -16}, {-50, 44}, {-50, 44}})}, coordinateSystem(initialScale = 0.1)),
    Documentation(info = "<html><head></head><body>Connector with two Boolean output signals, is used to connect the Step to the related Action block.</body></html>"));
end StepOUT;