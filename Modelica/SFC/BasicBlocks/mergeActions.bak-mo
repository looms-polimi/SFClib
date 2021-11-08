within SFC.BasicBlocks;

model mergeActions "Merge actions at different Steps of an SFC"
  Modelica.Blocks.Interfaces.BooleanOutput y annotation(
    Placement(visible = true, transformation(origin = {120, 1.11022e-16}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 1.11022e-16}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Integer n=1 "Number of actions to merge";
  SFC.Interfaces.actionIN mergeIN[n] annotation(
    Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
algorithm
  for i in 1:n loop
    when initial() then
      if mergeIN[i].phase then
        y := mergeIN[i].action;
      end if;
    elsewhen edge(mergeIN[i].phase) then
      y := mergeIN[i].action;
    end when;
    when pre(mergeIN[i].action) and not mergeIN[i].action then
      y := false;
    end when;
  end for;
// --> serve per il pulse per "aggiornare" il valore dell'uscita. Funziona solo se azione(t)=1 e azione(t+1)=0, che "identifica" l'impulso.
// another option could be change() but it may create conflicts if a phase is activated and another is deactivated at the same time;
//----------VERSION WITHOUT WHEN INITIAL()---------
//algorithm
//  for i in 1:n loop
//    when edge(mergeIN[i].phase) then
//      y := mergeIN[i].action;
//    end when;
//    when pre(mergeIN[i].action) and not mergeIN[i].action then y := false; end when;
//    // --> serve per il pulse per "aggiornare" il valore dell'uscita. Funziona solo se azione(t)=1 e azione(t+1)=0, che "identifica" l'impulso.
//  end for;
//initial algorithm
//  for i in 1:n loop
//    if mergeIN[i].phase then
//      y := mergeIN[i].action;
//    end if;
//  end for;
//-----------END VERSION WITHOUT WHEN INITIAL()---------
//when pre(y) and mergeIN[i].qualif == SFC.Types.Qualifier.P then y := false; end when; // modificare connettore;
//when edge(not mergeIN[i].action) and pre(y) then y := false; end when;
//when edge(not mergeIN[i].action) then y := mergeIN[i].action; end when;
/*
when a falling egde in the action occurs the output updated its value;
this command has been made to avoind outputs errors while using a Pulse. The Pulse is a instantaneous change "false-true-false", with code line 11 we set the output true when a rising edge is detected but we do not drive the output to false, which is needed!!
*/
//---------------------------------------------------------------------------
//    when change(mergeIN[i].action) then
//    y := mergeIN[i].action;
//    end when;
// the when statement is needed when the action changes during the time the phase is active; sostanzialmente aggiorna ogni volta l'uscita e non solo ad ogni cambio di fase;
//ERA STATO FATTO PER L'IMPULSO TEMPORIZZATO, NON FUNZIONA CON L'IMPULSO NON TEMPORIZZATO!
//----------------------------------------------------------------------------
  annotation(
    Icon(graphics = {Rectangle(fillColor = {186, 186, 186}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-12, 0}, extent = {{-48, 20}, {72, -20}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
    Documentation(info = "<html><head></head><body><div style=\"text-align: justify;\"><div>In the SFC representation, the same action can be driven and shared by different steps and performed with the same or different qualifiers. This block is used to merge these actions coming from different Action blocks.</div><div><br></div><div>To acquire the actions' activations, the <u style=\"font-style: italic;\">mergeAction</u> block use as input the connector <i>actionIN</i> from the Interface of the SFC library and as output the standard <i>BooleanOutput</i> from the Modelica library, to show the composed signal to the external blocks.</div><div>&nbsp;</div><div><i><u>mergeAction</u></i> simply copies the trend of the action when the corresponding step is active. The parameter n allows indicating the number of input actions to be merged. The number chosen with n must match the number of action blocks connected.</div><div><br></div><div>The modelisation of a single action is ambiguous in the SFC language and it can be described as a combination of set(S) and reset(R) signals, as pulse(P) signal as NonStored (N) signal (the action is performed for all the activation time of a step). Once a modelisation has been chosen, it should be used in the overall model, and this means that the only merging combinations are the ones in the table below: consecutive SR, P or N signals.</div><div><br></div><div><table border=\"1\" cellspacing=\"0\" cellpadding=\"2\"><tbody><tr bgcolor=\"#e0e0e0\">
    <th> </th><th>S</th><th>R</th><th>N</th><th>P</th>
</tr><tr><th>S</th><td> </td><td>•</td><td> </td><td> </td></tr>
<tr><th>R</th><td>•</td><td></td><td></td><td></td></tr>
<tr><th>N</th><td></td><td></td><td>•</td><td></td></tr>
<tr><th>P</th><td></td><td></td><td></td><td>•</td></tr>

</tbody></table><br></div><div>Of course one can also have consecutive S o R signal, but only the first one will change the status of the merge signal in the output.</div></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><br></div></body></html>"));
end mergeActions;
