within SFC.BasicBlocks; 
////versione algoritmo

model ActionSI_R "Action Reset associated to an SFC Step - Single Input" 

  parameter String name = "action1";
  Integer handle;
  Modelica.Blocks.Interfaces.BooleanInput phase_active annotation(
    Placement(visible = true, transformation(origin = {-130, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  
  
initial equation
  SFC.Functions.set_boolean_variable(handle,phase_active);
    
algorithm
  when initial() then
    handle := SFC.Functions.register_boolean_variable(name);
  end when;
  when edge(phase_active) then
    SFC.Functions.set_boolean_variable(handle,false);
  end when;
  
  annotation(
    Icon(coordinateSystem(initialScale = 0.1), graphics = {Text(origin = {-72, 0}, extent = {{-34, 42}, {34, -42}}, textString = "R"), Rectangle(origin = {30, 0}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-70, 40}, {70, -40}}), Rectangle(origin = {-70, 0}, fillColor = {238, 238, 236}, fillPattern = FillPattern.Solid, extent = {{-30, 40}, {30, -40}}), Text(origin = {-72, 0}, extent = {{-34, 42}, {34, -42}}, textString = "R")}),
    Documentation(info = "<html><head></head><body><div style=\"text-align: justify;\">At each step of an SFC, one or more actions can be generated. One Action block is required for a single action to be performed at each step (e.g. if a step must perform 3 actions, there will be 3 Action blocks connected to that step).</div><div><br></div>
The block has three connectors: one <i>BooleanInput</i> and one  <i>BooleanOutput</i> connector from the Modelica Standard Library and one a<i>ctionOUT</i> from the Interfaces of the SFC library.
The BooleanInput takes as input the activation of the related step, the two outputs of the block are used to perform an action when the step associated becomes active:&nbsp;<div><ul><li>The <u>BooleanOutput</u> communicates when the action is performed through a boolean action variable (used to connect the action block to other standard blocks, i.e. it simplifies the compatibility with other pre-built blocks).&nbsp;</li></ul></div><div><ul><li><u>actionOUT</u> is used to send both the boolean action variable - the same of the BooleanOutput - and the boolean step variable - that indicates when the step related to the action became active - to connect the action block to the MergeActions block;</li></ul>&nbsp;The Action block has two internal parameters:</div><div><ul><li> <b>Initial step action</b> - is used to set if an Action block is connected to an initial step or not, its default value is false.
</li></ul></div><div><ul><li> <b>qualifierType</b> - enables the user to select the qualifier type and the output of the block will directly depend on this choice, its default value is N (among the implemented qualifier below).

The structure of the block consists of a sequence of when statements that detect when the step is active, and depending on the qualifier the output of the Action block will be driven to a particular value.</li></ul></div><div style=\"text-align: justify;\">Qualifier implemented:
     
</div><div style=\"text-align: justify;\"><ul><li><b>N</b> (Non-stored);</li><li><b>S</b> (Set/Stored);</li><li><b>R</b> (Reset);</li><li><b>P</b> (Pulse);</li></ul><div>

    <table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
  <tbody><tr bgcolor=\"#e0e0e0\"><th>Name</th><th>Description</th>
  </tr><tr>  <th>N</th><td>the action is performed as long as the associated step stays active.</td>
  </tr><tr>  <th>S</th><td>the action is performed from the activation instant of the associated step and it keeps executing even beyond the duration of the step activation. </td>
  </tr><tr>  <th>R</th><td>the action is deactivated; it is useful when combined with qualifier S*.</td>
  </tr><tr>  <th>P</th><td>the action, when the step it is associated becomes active, is instantaneously activated and deactivated.</td>
  </tr></tbody></table></div><div>(*) in order to combine actions see block MergeActions.&nbsp;</div><div><br></div><div><br></div><div>&nbsp;</div></div></body></html>"));
end ActionSI_R;