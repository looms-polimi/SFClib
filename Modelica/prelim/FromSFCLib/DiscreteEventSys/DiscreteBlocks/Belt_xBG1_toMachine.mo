within FromSFCLib.DiscreteEventSys.DiscreteBlocks;

model Belt_xBG1_toMachine
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {168, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {170, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {170, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition1(y = Belt == true and (xBG1 == false or xBG1 == true))  annotation(
    Placement(visible = true, transformation(origin = {-64, 74}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition2(y = Belt == false and xBG1 == true)  annotation(
    Placement(visible = true, transformation(origin = {-68, 40}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition3(y = Belt == false and xBG1 == false)  annotation(
    Placement(visible = true, transformation(origin = {-64, -6}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tE annotation(
    Placement(visible = true, transformation(origin = {166, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tF annotation(
    Placement(visible = true, transformation(origin = {142, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tI annotation(
    Placement(visible = true, transformation(origin = {142, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput tW annotation(
    Placement(visible = true, transformation(origin = {142, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SFC.BasicBlocks.Condition condition annotation(
    Placement(visible = true, transformation(origin = {26, -48}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  SFC.DiscreteEventSys.DiscreteBlocks.MachineStates machineStates annotation(
    Placement(visible = true, transformation(origin = {76, 28}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput Belt annotation(
    Placement(visible = true, transformation(origin = {-122, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput xBG1 annotation(
    Placement(visible = true, transformation(origin = {-122, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(machineStates.cond_IF, condition.y) annotation(
    Line(points = {{65, -22}, {65, -48}, {37, -48}}, color = {255, 0, 255}));
  connect(condition.y, machineStates.cond_EF) annotation(
    Line(points = {{37, -48}, {53, -48}, {53, -22}}, color = {255, 0, 255}));
  connect(machineStates.Working_mode, tW) annotation(
    Line(points = {{124, 28}, {124, -18}, {170, -18}, {170, -26}}, color = {255, 0, 255}));
  connect(machineStates.Energy_mode, tE) annotation(
    Line(points = {{124, 46}, {124, 7}, {166, 7}, {166, 40}}, color = {255, 0, 255}));
  connect(machineStates.Idle_mode, tI) annotation(
    Line(points = {{124, 37}, {94, 37}, {94, 28}, {124, 28}, {124, -4}, {170, -4}}, color = {255, 0, 255}));
  connect(machineStates.Fault_mode, tF) annotation(
    Line(points = {{124, 19}, {124, -30.5}, {168, -30.5}, {168, -54}}, color = {255, 0, 255}));
  connect(machineStates.cond_WF, condition.y) annotation(
    Line(points = {{78, -22}, {73.5, -22}, {73.5, -48}, {37, -48}}, color = {255, 0, 255}));
  connect(machineStates.cond_FE, condition.y) annotation(
    Line(points = {{105, -22}, {87, -22}, {87, -48}, {37, -48}}, color = {255, 0, 255}));
  connect(condition1.y, machineStates.cond_EI) annotation(
    Line(points = {{-52, 74}, {26, 74}, {26, 72}, {26, 72}}, color = {255, 0, 255}));
  connect(condition1.y, machineStates.cond_WI) annotation(
    Line(points = {{-52, 74}, {-46, 74}, {-46, 6}, {26, 6}, {26, 6}}, color = {255, 0, 255}));
  connect(machineStates.cond_EW, condition2.y) annotation(
    Line(points = {{26, 60}, {-34, 60}, {-34, 40}, {-57, 40}}, color = {255, 0, 255}));
  connect(machineStates.cond_IW, condition2.y) annotation(
    Line(points = {{26, 26}, {-50, 26}, {-50, 40}, {-57, 40}}, color = {255, 0, 255}));
  connect(machineStates.cond_WE, condition3.y) annotation(
    Line(points = {{26, -6}, {-54, -6}, {-54, -6}, {-52, -6}}, color = {255, 0, 255}));
  connect(condition3.y, machineStates.cond_IE) annotation(
    Line(points = {{-52, -6}, {-10, -6}, {-10, 38}, {26, 38}, {26, 40}}, color = {255, 0, 255}));
  annotation(
    Icon(graphics = {Rectangle(origin = {0, -1}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 101}, {100, -99}}), Text(origin = {5, 5}, extent = {{-33, 23}, {33, -23}}, textString = "%name")}));
end Belt_xBG1_toMachine;