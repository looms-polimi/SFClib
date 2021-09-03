within SFC.BasicBlocks;

model CounterAction "Counter of actions' activations"

Integer count (start = 0);

Modelica.Blocks.Interfaces.BooleanInput increment annotation(
    Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-40, 1.11022e-16}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

algorithm
when initial() then if increment then count :=1; end if;
elsewhen edge(increment) then count := pre(count) +1; end when;
//if increment.action then count := pre(count) +1; end if;

//initial algorithm
//if increment.action then count :=1; end if;

annotation(
    uses(Modelica(version = "3.2.3")),
    Diagram(coordinateSystem(initialScale = 0.1)),
    Icon(graphics = {Rectangle(origin = {-20, 20}, fillColor = {245, 245, 245}, fillPattern = FillPattern.Solid, extent = {{-40, 40}, {80, -80}}), Text(origin = {-25, 44}, extent = {{-21, 10}, {69, -24}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
    Documentation(info = "<html><head></head><body><i><u>CounterAction</u></i>&nbsp;is a block that counts events coming from an Action or a mergeActions block, the counter is incremented every time it detects an action (through a rising edge).<div><br><div>It has as input the connector <i>booleanInput</i>&nbsp;- from the Modelica Standard library - and one internal variable <b>count</b> of type Integer, used to keep track of the sum of the activated actions.&nbsp;<span style=\"font-size: 12px; text-align: justify;\">One CounterAction block is required to count the activation times of a single Action block.</span></div><div><br></div></div></body></html>"));
    

end CounterAction;
