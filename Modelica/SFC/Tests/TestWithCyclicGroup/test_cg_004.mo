within SFC.Tests.TestWithCyclicGroup;

model test_cg_004 "Two SFC with semaphores with different period"
  SFC.Tests.TestWithCyclicGroup.test_cg_001 test_cg_001_1 annotation(
    Placement(visible = true, transformation(origin = {-30, -10}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Tests.TestWithCyclicGroup.test_cg_001 test_cg_001_2( period = 1)  annotation(
    Placement(visible = true, transformation(origin = {28, -10}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation

annotation(
    Documentation(info = "<html><head></head><body>I due SFC estendono ognuno lo stesso schema di test_cg_001 ed eseguono lo stesso SFC ma seguendo sue cyclic group con periodi diversi.&nbsp;<br><br></body></html>"));
end test_cg_004;