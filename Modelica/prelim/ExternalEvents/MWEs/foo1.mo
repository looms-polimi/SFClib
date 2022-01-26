within ExternalEvents.MWEs;

model foo1
  discrete Integer handle ;
  discrete Real t(start=-1000);
  discrete Integer counter(start=0);

algorithm
  when initial() then
  handle := Functions.new_semaphore();
  end when;

  when time>0.5 then
    t := Functions.get_semaphore(handle, time, 0, 1);
  end when;
  
  when time>0.6 then
    t := Functions.get_semaphore(handle, time, 0, 1);
  end when;
  
  when time>100.5 then
    t := Functions.get_semaphore(handle, time, 0, 1);
  end when;
  
  when time>100.6 then
    t := Functions.get_semaphore(handle, time, 0, 1);
  end when;
  
  when time>=t then
  counter := counter + 1;
  end when;
end foo1;