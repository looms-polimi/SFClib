within SFC.BasicBlocks;

model Action "Action performed during a Step of an SFC"
  Modelica.Blocks.Interfaces.BooleanInput phase_active annotation(
    Placement(visible = true, transformation(origin = {-48, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter SFC.Types.Qualifier qualifierType = SFC.Types.Qualifier.N;
  SFC.Interfaces.actionOUT actionOUT annotation(
    Placement(visible = true, transformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Boolean initialStepAction = false "checked if the action is associated to the Initial Step" annotation(
    Evaluate = true,
    HideResult = true,
    choices(__Dymola_checkBox = true));
  Modelica.Blocks.Interfaces.BooleanOutput actionBoolean annotation(
    Placement(visible = true, transformation(origin = {102, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  actionBoolean = actionOUT.action;
  actionOUT.phase = phase_active;
algorithm
  when initial() then
    if initialStepAction then
      if qualifierType == SFC.Types.Qualifier.P or qualifierType == SFC.Types.Qualifier.S or qualifierType == SFC.Types.Qualifier.N then
        actionOUT.action := true;
      elseif qualifierType == SFC.Types.Qualifier.R then
        actionOUT.action := false;
      end if;
    elseif not initialStepAction then
      actionOUT.action := false;
    end if;
  elsewhen edge(phase_active) then
    if qualifierType == SFC.Types.Qualifier.N then
      actionOUT.action := true;
    elseif qualifierType == SFC.Types.Qualifier.S then
      actionOUT.action := true;
    elseif qualifierType == SFC.Types.Qualifier.R then
      actionOUT.action := false;
    elseif qualifierType == SFC.Types.Qualifier.P then
      actionOUT.action := true;
    end if;
  elsewhen pre(actionOUT.action) and qualifierType == SFC.Types.Qualifier.P then
    actionOUT.action := false;
  elsewhen phase_active == false and qualifierType == SFC.Types.Qualifier.N then
    actionOUT.action := false;
  end when;
// used to make P action return to false after one iteration;
// used to detect a falling edge of the step and deactivate the action when the qualifier is N;
  annotation(
    Icon(graphics = {Rectangle(fillColor = {218, 218, 218}, fillPattern = FillPattern.Solid, extent = {{-140, 40}, {100, -40}}), Text(origin = {-15, 16}, extent = {{-23, 0}, {-81, -28}}, textString = "%qualifierType"), Text(origin = {21, 8}, extent = {{61, -24}, {-47, 16}}, textString = "%name"), Line(origin = {-36, 0.5}, points = {{0, 39.5}, {0, -40.5}, {0, -38.5}})}, coordinateSystem(initialScale = 0.1)),
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
end Action;
