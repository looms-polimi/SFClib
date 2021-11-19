within SFClib_examples;

package Semaphore 
model Sema
    parameter Real Tc=1;
    parameter Integer n=2;
    input Boolean lockReq[n](each start=false);
    discrete Boolean locked(start=false);
    discrete Real tlock(start=0);
algorithm
  when not locked and any(lockReq) then
    locked := true;
    tlock := time;
  elsewhen locked and time-tlock>=Tc then
    locked := false;
  end when;
end Sema;

  model user
    outer Sema sema;
    parameter Integer id=1;
    parameter Real period=1;
  algorithm
    when sample(period,0) then
      sema.lockReq[id] := not(sema.lockReq[id]);
    end when;
  end user;

  model pool
  inner Sema sema annotation(
      Placement(visible = true, transformation(origin = {-54, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  user user1 annotation(
      Placement(visible = true, transformation(origin = {-18, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  user user2(id = 2)  annotation(
      Placement(visible = true, transformation(origin = {28, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  end pool;

  connector SemaPort
    flow Real lockRequest;
    Boolean locked;
  end SemaPort;

  function any
    input Boolean u[:];
    output Boolean y;
  algorithm
    y := false;
    for i in 1:size(u,1) loop
      if u[i] then y := true; break; end if;
    end for;
  end any;
end Semaphore;