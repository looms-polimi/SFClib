within SFC.SFCelements.P_actions_typical;

model P_action_integer_set 
  extends SFCelements.BaseClasses.Base_action_P;
  parameter String variable_name = "integer1";
  parameter Integer value=1 "value to set";
algorithm
  when phase_active then
   SFC.Functions.set_integer_variable(handle,value);
  end when;
  when initial() then
    handle := SFC.Functions.register_integer_variable(variable_name);
    if phase_active then
       SFC.Functions.set_integer_variable(handle,value);
    end if;
  end when;

end P_action_integer_set;