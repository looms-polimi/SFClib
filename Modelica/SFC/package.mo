package SFC
 extends Modelica.Icons.Package;
 import Modelica.SIunits.*;
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    uses(Modelica(version = "3.2.3")),
 Documentation(info = "<html><head></head><body><div style=\"text-align: justify;\">This library contains different packages that are meant to make the user able to simulate Discrete Events Systems (DEVS) through the SFC approach. The structure of the library is:</div><div style=\"text-align: justify;\"><br></div><div><ul><li style=\"text-align: justify;\"><b>Interfaces</b>: it contains all the connectors attached to each component used to pass information from one componet to another.</li><li style=\"text-align: justify;\"><b>BasicBlocks</b>: it contains all the blocks needed to design the SFC. It has the basic componets, such as Step, Action and Transition. Moreover, it contains other blocks used for particular cases and designed to give to the user more flexibility during the system simulation.</li><li style=\"text-align: justify;\"><b>Branching</b>: It contains the components used to split or join multiple steps. The maximum number of inputs/outputs per componet is 3.</li><li style=\"text-align: justify;\"><b>Types</b>: it contains the variable created and used in the implementation of this library.</li><li style=\"text-align: justify;\"><b>DevelTest</b>: it contains some examples given to the user as guidance and to give him a better explanetion of how the librery works.</li></ul><div><br></div></div><div><br></div></body></html>"));
end SFC;
