within SFC.BasicBlocks;

record VarRecord
extends Modelica.Icons.Record;
 Integer Ninput = 1;
 String  Var_name[Ninput];
  parameter Real a=1, b=2, c=3, d=0; //questi per forza 

algorithm
  when initial() then
   SFC.Functions.register_real("d", d);
   
  end when; 


end VarRecord;