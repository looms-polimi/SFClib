within SFC.BasicBlocks;

model CyclicGroup
  parameter Real period=1;
  parameter Real phase=0;
  discrete Integer handle;
equation

algorithm
  when initial() then
    handle := Functions.new_semaphore();
  end when;

  annotation(
    defaultComponentName="cyclicGroup",
    defaultComponentPrefixes="inner",
    missingInnerMessage="Your model is using an outer \"CyclicGroup\" component but an inner \"CyclicGroup\" component is not defined. Drag CyclicGroup your model to specify the cyclic grpup properies.");
end CyclicGroup;