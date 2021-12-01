within SFC.Tests.TestWithCyclicGroup;

model test_sem_TwoPeriod "Two SFC with semaphores with different period"
  SFC.Tests.TestWithCyclicGroup.test_semaphore_001 test_semaphore_001 annotation(
    Placement(visible = true, transformation(origin = {-30, -10}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Tests.TestWithCyclicGroup.test_semaphore_001 test_semaphore_002(period = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {28, -10}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation

annotation(
    Documentation(info = "<html><head></head><body>I due SFC estendono ognuno lo stesso schema di test_semaphore_001 ed eseguono lo stesso SFC ma con periodi diversi.&nbsp;<br><br>Due SFC con semafori diversi possono coesistere nello stesso modello.</body></html>"));
end test_sem_TwoPeriod;