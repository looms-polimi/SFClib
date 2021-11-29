within ExternalEvents.MWEs;

model foo
  discrete Integer pippo(start=-1000);
algorithm
  when time>0.5 then
    pippo := Functions.new_semaphore();
  end when;
end foo;