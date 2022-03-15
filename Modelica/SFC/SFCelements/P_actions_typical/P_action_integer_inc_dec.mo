within SFC.SFCelements.P_actions_typical;

model P_action_integer_inc_dec 
  extends SFCelements.BaseClasses.Base_action_P;
  parameter String variable_name = "integer1";
  parameter Integer delta=1 "variation";
algorithm
  when phase_active then
   SFC.Functions.set_integer_variable(handle,
       SFC.Functions.get_integer_variable(handle)+delta);
  end when;
  when initial() then
    handle := SFC.Functions.register_integer_variable(variable_name);
  end when;

end P_action_integer_inc_dec;