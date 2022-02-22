within SFC.Examples.Application_example_001;

model CompleteExample_withAdditive
  extends Modelica.Icons.Example;
  SFC.Examples.Application_example_001.Plant plant annotation(
    Placement(visible = true, transformation(origin = {-50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.Examples.Application_example_001.ModulatingControl modulatingControl annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  LogicControl2 logicControl2 annotation(
    Placement(visible = true, transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

end CompleteExample_withAdditive;