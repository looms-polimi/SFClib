within SFC.SFCelements.P_actions_typical;

model P_action_real_set 
  extends SFCelements.BaseClasses.Base_action_P;
  parameter String variable_name = "real1";
  parameter Real value=0 "value to set";
algorithm
  when phase_active then
   SFC.Functions.set_real_variable(handle,value);
  end when;
  when initial() then
    handle := SFC.Functions.register_real_variable(variable_name);
    if phase_active then
       SFC.Functions.set_real_variable(handle,value);
    end if;
  end when;

end P_action_real_set;