within ExternalEvents.MWEs;

model foo2
  discrete Integer handle ;
  discrete Real t1(start=-1000), t2(start=-1000);
  discrete Integer counter(start=0);

algorithm
  when initial() then
  handle := Functions.new_semaphore();
  end when;

  when time>0.5 then
    t1 := Functions.get_semaphore(handle, time, 0, 1);
  end when;
  
  when time>0.6 then
    t2 := Functions.get_semaphore(handle, time, 0, 1);
  end when;
  
  when time>100.5 then
    t1 := Functions.get_semaphore(handle, time, 0, 1);
  end when;
  
  when time>100.6 then
    t2 := Functions.get_semaphore(handle, time, 0, 1);
  end when;
  
  when time>=t1 then
  counter := counter + 1;
  end when;
  
  when time>=t2 then
  counter := counter + 1;
  end when;
end foo2;