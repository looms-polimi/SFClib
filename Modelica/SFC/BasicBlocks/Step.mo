within SFC.BasicBlocks;

model Step "Step of an SFC"
  SFC.Interfaces.StepInput IN annotation(
    Placement(visible = true, transformation(origin = {0, 100}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.StepOutput OUT annotation(
    Placement(visible = true, transformation(origin = {0, -100}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Boolean active;
  Real t(start=0);
  SFC.Interfaces.StepOUT X annotation(
    Placement(visible = true, transformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {140, 5.32907e-15}, extent = {{-40, -40}, {40, 40}}, rotation = 0)));
   parameter Boolean initialStep = false "checked if the Step is the Initial step of the SFC" annotation(
    Evaluate = true,
    HideResult = true,
    choices(__Dymola_checkBox = true));
 
protected
  discrete Real t_last_activation(start=0,fixed=true);
  discrete Real duration_last_activity(start=0,fixed=true);
  discrete Integer act_count;
 
equation
  active = X.phase_act;
  t = if X.phase_act then time - t_last_activation else duration_last_activity;
  OUT.active=X.phase_act;
  if initialStep then 
     X.InitialStep = true; 
     else 
     X.InitialStep = false; 
  end if;
  
algorithm
  when change(IN.fire) then
    X.phase_act:=true;
    t_last_activation:= time;
    act_count := act_count+1;
  end when;
  
  when change(OUT.fire) then
     X.phase_act:=false;
     duration_last_activity := t;
  end when;
  
initial algorithm
  if initialStep then 
     X.phase_act := true; 
     else 
     X.phase_act := false; 
  end if;
  act_count := 0;
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(graphics = {Rectangle(fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-3, 3}, extent = {{-57, 35}, {57, -35}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
  Documentation(info = "<html><head></head><body><span style=\"text-align: justify;\">A <u>Step</u> of a system is defined as an invariant condition of a system that can be modified only after that an event occurs, this event generates an activity that takes the system to a different step.</span><br><div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">The <b>Step</b> block is equipped with three connectors, two are the customised <i>StepInput</i> and <i>StepOutput</i> from the Interface of the SFC library, the other one is a <i>BooleanOutput</i> connector from the Modelica Standard Library. 
The <i>StepInput</i> and <i>StepOutput</i> connectors are used to interchange information with the preceding and following transitions, while the <i>BooleanOutput</i> connector is used to trigger the related actions if it is connected with an Action block.</div></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">In adherence to the IEC 61131 standard, a step has two internal variables:
</div><div><ul><li style=\"text-align: justify;\">A state variable <b>X</b> (Boolean), that  indicates if the state is active or not;
</li></ul></div><div><ul><li style=\"text-align: justify;\">A time variable <b>t</b> (Real), that represents the elapsed time from its activation.</li></ul></div>

<div style=\"text-align: justify;\">A generic step of a system is initialised by default setting <u>X=false</u> and <u>t=0</u>, then the step is not active when the simulation starts and the activation time is set to zero and start counting when an activation of the block is performed.
</div></body></html>"));
end Step;