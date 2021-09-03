within SFC.Interfaces;

partial model subSystem
  Modelica.Blocks.Interfaces.BooleanInput u annotation(
    Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation(
    Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {19, 0}, extent = {{-83, 36}, {61, -32}}, textString = "%name")}),
    Documentation(info = "<html><head></head><body>Interface developed with the purpose of creating <b>subsystems</b> of SFC.<div><br></div><div>It is used to scale the SFC system. In some application, a step of the SFC can be detailed and be represented as an SFC itself. This interface allows the user to create more complex system representations.</div><div><br></div><div>Important annotations:</div><div><ul><li>the BooleanInput connector must be the related signal of the first condition that triggers the first transition (connected to the initial step of the subSFC);</li><li>the action of the last step must be connected to the BooleanOutput connector;</li></ul></div>
    
    <img width=\"400\" src=\"modelica://SFC/Images/tests/subSFCex.png\">
    
    <div><br></div><div><br></div><div>A complete example can be seen in SFC.Tests.subSFC.Examples;</div></body></html>"));end subSystem;