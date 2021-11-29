within SFC.Interfaces;

partial model subBranchInterface
 SFC.Interfaces.StepInput IN annotation(
    Placement(visible = true, transformation(origin = {0, 100}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
 SFC.Interfaces.StepOutput OUT annotation(
    Placement(visible = true, transformation(origin = {0, -100}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation

annotation(
    Icon,
    Documentation(info = "<html><head></head><body><div><b>Da modificare: subbranch con suo system logger e semaforo indipendente, Input/output come se fosse uno step&nbsp;</b></div><div><br></div>Interface developed with the purpose of creating <b>subsystems</b> of SFC.<div><br></div><div>It is used to scale the SFC system. In some application, a step of the SFC can be detailed and be represented as an SFC itself. This interface allows the user to create more complex system representations.</div><div><br></div><div>Important annotations:</div><div><ul><li>the BooleanInput connector must be the related signal of the first condition that triggers the first transition (connected to the initial step of the subSFC);</li><li>the action of the last step must be connected to the BooleanOutput connector;</li></ul></div>
    
    <br><div><br></div><div><br></div><div>A complete example can be seen in ......;</div></body></html>"),
 Diagram(graphics = {Rectangle(fillColor = {246, 245, 244}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}})}));
end subBranchInterface;