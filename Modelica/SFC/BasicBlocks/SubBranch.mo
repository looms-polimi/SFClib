within SFC.BasicBlocks;

model SubBranch
extends SFC.Interfaces.subBranchInterface;
  inner SFC.Utilities.System_logger system_logger(log_on = true)  annotation(
    Placement(visible = true, transformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

end SubBranch;