within SFC.SFCelements;

model StepNDT "Step with No Downstream Transition"
  Modelica.Blocks.Interfaces.BooleanOutput X annotation(
    Placement(visible = true, transformation(origin = {-34, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, -3.55271e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Interfaces.StepInput IN annotation(
    Placement(visible = true, transformation(origin = {-26, 116}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
algorithm
  when change(IN.fire) then X:=true; end when;
initial algorithm
  X := false;
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-3, 3}, extent = {{-57, 35}, {57, -35}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div style=\"text-align: justify; \"><div>The main features and the structure of this <b>Step</b> are illustrated in the Step block of the library.&nbsp;</div><div><br></div><div><u><i>FinalStep</i></u> is used when the system arrives in a state where it is stuck and the SFC can't evolve anymore (the block has no output).</div></div></body></html>"));
end StepNDT;
