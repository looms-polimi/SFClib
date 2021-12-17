within SFC.BasicBlocks;

model CyclicGroup
  parameter Real period=1;
  parameter Real phase=0;
  discrete Integer handle;
equation

algorithm
  when initial() then
    handle := Functions.new_aligned_event();
  end when;

  annotation(
    defaultComponentName="cyclicGroup",
    defaultComponentPrefixes="inner",
    missingInnerMessage="Your model is using an outer \"CyclicGroup\" component but an inner \"CyclicGroup\" component is not defined. Drag CyclicGroup your model to specify the cyclic grpup properies.",
  Icon(graphics = {Rectangle(fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, extent = {{-100, 100}, {100, -100}}), Text(origin = {-58, -50}, extent = {{-4, 12}, {4, -12}}, textString = "T"), Text(origin = {-82, 25}, extent = {{-10, 13}, {10, -13}}, textString = "P"), Line(origin = {13.1892, -28}, points = {{0, 4}, {0, -4}, {0, -4}}), Line(origin = {32.973, -28}, points = {{0, 4}, {0, -4}, {0, -4}}), Line(origin = {54.2703, -28}, points = {{0, 4}, {0, -4}, {0, -4}}), Line(origin = {-27.7297, -28}, points = {{0, 4}, {0, -4}, {0, -4}}), Line(origin = {36.9224, 73.3}, points = {{-80, -68}, {-58, -68}, {-58, -24}, {2, -24}, {2, -68}, {22, -68}}, thickness = 0.75), Line(origin = {12, -28}, points = {{-80, 0}, {80, 0}, {80, 0}}), Line(origin = {-7.7297, -28}, points = {{0, 4}, {0, -4}, {0, -4}}), Line(origin = {74.8108, -28}, points = {{0, 4}, {0, -4}, {0, -4}}), Line(origin = {-48, -28}, points = {{0, 4}, {0, -4}, {0, -4}}), Line(origin = {-68, -28}, points = {{0, 4}, {0, -4}, {0, -4}}), Line(origin = {-47.2433, -36.1622}, points = {{-20, 0}, {0, 0}}, arrow = {Arrow.Filled, Arrow.Filled}), Text(origin = {-20, 77}, extent = {{-16, 9}, {16, -9}}, textString = "event"), Text(origin = {-84, -29}, extent = {{-10, 13}, {10, -13}}, textString = "CG"), Line(origin = {-7.61838, -48.9743}, points = {{0, 26}, {0, 50}}, color = {224, 27, 36}, arrow = {Arrow.Filled, Arrow.None}), Line(origin = {-20.8616, 18.8634}, points = {{0, -42}, {0, 50}}, color = {224, 27, 36}, arrow = {Arrow.Filled, Arrow.None})}),
  Documentation(info = "<html><head></head><body>A Cyclic group is needed to align the events to a certain time period (i.e. to replicate the behaviour of a PLC).<div><br></div><div>When an event happen in a system (P), and it is not aligned to the period of the cyclic group, it schedules an event at the first multiple of its period time.</div></body></html>"));
end CyclicGroup;