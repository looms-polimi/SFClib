within SFC.Tests.CplusPlusTest1;

model FunctionInWhen
discrete Integer handle;
discrete Integer counter(start=0);
Real y;
equation
y=sin(time);
algorithm
  when initial() then
    handle := Functions.new_semaphore();
  end when;
  
  when sin(time)>0.5 then
    Functions.get_semaphore(handle,time,0,0.1);
  end when;
  
  when time>Functions.query_semaphore(handle) then
    counter := counter + 1;
  end when;

end FunctionInWhen;