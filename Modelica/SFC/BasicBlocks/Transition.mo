within SFC.BasicBlocks;

model Transition "Transition of an SFC"
  SFC.Interfaces.TransitionInput IN annotation(
    Placement(visible = true, transformation(origin = {-92, 60}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-1.77636e-15, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.TransitionOutput OUT annotation(
    Placement(visible = true, transformation(origin = {-54, -62}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {3.55271e-15, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput C annotation(
    Placement(visible = true, transformation(origin = {100, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));


  discrete Real time_next_firing;
  outer SFC.BasicBlocks.CyclicGroup cyclicGroup;
  
equation
  OUT.fire = IN.fire;
algorithm
  when IN.active and C then
    time_next_firing := Functions.get_semaphore
         (cyclicGroup.handle,
         time,
         cyclicGroup.phase,
         cyclicGroup.period);
  end when;
  
  when time>=time_next_firing then
    OUT.fire := not OUT.fire;
  end when;  

initial algorithm
   time_next_firing := -1e12;
   if IN.active then 
     IN.fire     := true;
   else 
     IN.fire    := false;
   end if; 


annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-100, 20}, {100, -20}}), Text(origin = {-163, 39}, extent = {{-57, 35}, {57, -35}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
  experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
  Documentation(info = "<html><head></head><body><div style=\"text-align: justify;\">A <b>Transition</b>&nbsp;in the SFC is the element placed between two Steps, always associated with a condition. Its role is to manage the system evolution from one step to another that happens every time the transition is enabled(the step preceding the transition is active and the condition is satisfied).</div><div><br></div>The <i><u>Transition</u></i> block is equipped with three connectors, two are the customised <i>TransitionInput</i> and <i>TransitionOutput</i> from the Interface of the SFC library, the other one is a <i>BooleanInput</i> connector from the Modelica Standard Library. <div><br></div><div><div><b>Evolution Rules&nbsp;</b></div><div><b><br></b></div>To perform the evolution of the system, the TransitionInput and TransitionOutput monitor the state of the preceding and succeeding steps, the BooleanInput communicates if the condition (that comes from the Condition block) becomes true. As can be seen in the Figure below, suppose that S0 is an active step and step S1 is inactive, when condition C is satisfied, the transition is triggered and as consequence, the SFC evolves. S0 is deactivated and S1 is activated, always through the TransitionInput and TransitionOutput connectors.</div><div>&nbsp;&nbsp;<img width=\"400\" src=\"modelica://SFC/Images/Test/Evolutionlib.png\"></div><div><br></div><div><b>Internal block parameter</b></div><i><div><div style=\"font-size: 12px; font-style: normal;\"><br></div><div style=\"font-size: 12px; font-style: normal;\">The Transition block has one internal parameters&nbsp;<i><div style=\"display: inline !important;\"><span style=\"font-weight: bold; font-style: normal;\">T</span><sub style=\"font-style: normal;\"><b>cycle</b>&nbsp;</sub><span style=\"font-style: normal;\">:</span></div></i></div></div></i><div><ul><li>If T<sub>cycle</sub>=0, the SFC evolves immediately and the transition is triggered by the condition;
</li></ul></div><div><ul><li>If T<sub>cycle</sub>=!0, also if the condition is verified,  the SFC wait an amount of time equal to Tc before evolving.</li></ul></div>

This variable is useful for two reasons: 
First of all because, if the SFC language is used to simulate a PLC implementation, the PLC evolution implies a minimum cycle time&nbsp;T<sub>cycle</sub>&nbsp;(that depends from the application); Second, because when two consecutive transitions are fired contemporarily, the activation and deactivation of the Steps involved are instantaneous and can not be detected in the results. Then, in these cases, the library can not give any guaranty about the correctness of the SFC evolution.<div>More on the T<sub>cycle</sub>&nbsp;setting is explained in <i>Test_Tcycle</i>.</div><div><br></div><div><b><u>Note</u></b> that if the condition to be verified is a time to be waited - as in the example above - and the cycle time of the Transition block is different from zero (T<sub>cylce</sub> =!0), the total time to fire the transition will be the sum of the two (T<sub>cycle</sub> + time to verify the condition).</div></body></html>"));
end Transition;