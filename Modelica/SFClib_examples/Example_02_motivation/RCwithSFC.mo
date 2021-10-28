within SFClib_examples.Example_02_motivation;

model RCwithSFC
  parameter Modelica.SIunits.Voltage     Vg     = 20;
  parameter Modelica.SIunits.Resistance  R1     = 1e5;
  parameter Modelica.SIunits.Resistance  R2     = 1e5;
  parameter Modelica.SIunits.Capacitance C      = 1e-6;
  parameter Modelica.SIunits.Voltage     Vstart = 0;  
  parameter Boolean                      useTs  = false;
  parameter Modelica.SIunits.Time        Ts     = 1e-4;
  Modelica.Blocks.Interfaces.RealInput Vhi annotation(
    Placement(visible = true, transformation(origin = {-136, 46}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Vlo annotation(
    Placement(visible = true, transformation(origin = {-152, -42}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  discrete Modelica.Blocks.Interfaces.RealOutput Voh annotation(
    Placement(visible = true, transformation(origin = {126, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  discrete Modelica.Blocks.Interfaces.RealOutput Vol annotation(
    Placement(visible = true, transformation(origin = {136, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.SIunits.Voltage V(start=Vstart,fixed=true);
  Boolean sw_on;
  Integer ecTs(start=0);
  Integer ecsw(start=0);
  Real Vhieff,Vloeff;
equation
  Vhieff = if Vhi<=0 then Vg else Vhi;
  Vloeff = if Vlo<=0 then 0  else Vlo;
  if sw_on then
     C*der(V) = (Vg-V)/R1-V/R2;
  else
     C*der(V) = -V/R2;
  end if;
algorithm
  when sample(0,Ts) then
       ecTs  := ecTs+1;
  end when;
  when sw_on and V>=Vhieff and (not(useTs) or (useTs and sample(0,Ts))) then
       sw_on := false;
       Voh   := V;
       ecsw  := ecsw+1;
  end when;
  when not(sw_on) and V<=Vloeff and (not(useTs) or (useTs and sample(0,Ts))) then
       sw_on := true;
       Vol   := V;
       ecsw  := ecsw+1;
  end when;  
initial algorithm
  sw_on := if V<Vhieff then true else false;  
  
  
annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})));
end RCwithSFC;
