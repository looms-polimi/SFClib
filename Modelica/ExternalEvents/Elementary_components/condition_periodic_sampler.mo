within ExternalEvents.Elementary_components;

model condition_periodic_sampler
  parameter Real Tc=0.1;
  input Boolean condition;
  Boolean ewait(start=false);
  discrete Real etime(start=0);
  discrete Integer ctr(start=0);
algorithm
  when condition and not ewait then
    etime := time+Tc*(1-mod(time,Tc)/Tc);
    ewait := true;
  end when;
  when ewait and time>=etime then
    if condition then 
       ctr   := ctr+1;
    end if;
    ewait := false;
  end when;
end condition_periodic_sampler;
