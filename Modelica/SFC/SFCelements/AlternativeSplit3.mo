within SFC.SFCelements;

model AlternativeSplit3 "Alternative Split with three branches"
  SFC.Interfaces.StepOutput IN annotation(
    Placement(visible = true, transformation(origin = {2, 58}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {4.44089e-16, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.StepOutput OUT1 annotation(
    Placement(visible = true, transformation(origin = {12, 68}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {-400, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.StepOutput OUT2 annotation(
    Placement(visible = true, transformation(origin = {22, 78}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  SFC.Interfaces.StepOutput OUT3 annotation(
    Placement(visible = true, transformation(origin = {32, 88}, extent = {{-20, -10}, {20, 10}}, rotation = 0), iconTransformation(origin = {400, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  //Boolean fired(start=false);
  //Integer firedcount(start=0);

equation
  OUT1.active = IN.active;
  OUT2.active = IN.active;
  OUT3.active = IN.active;
  IN.fire = change(OUT1.fire) or change(OUT2.fire) or change(OUT3.fire);

  
//  when fired and (change(OUT1.active) or change(OUT2.active) or change(OUT3.active)) then 
//    fired := false;
//  end when;
  


//algorithm
//  when change(OUT1.fire) and fired == false then 
//    IN.fire    := not IN.fire;
//    fired      := true;
//    //firedcount = firedcount +1;
//  end when;
//  when change(OUT2.fire) and fired == false then 
//    IN.fire    := not IN.fire;
//    fired      := true;
//    //firedcount = firedcount +1;
//  end when;
//  when change(OUT3.fire) and fired == false then 
//    IN.fire    := not IN.fire;
//    fired      := true;
//    //firedcount = firedcount +1;
//  end when;
  


annotation(
    Icon(graphics = {Rectangle(origin = {0, 1}, fillPattern = FillPattern.Solid, extent = {{-420, 1}, {420, -1}})}),
    Documentation(info = "<html><head></head><body><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><div style=\"font-size: 12px;\"><b>AlternativeSplit3</b> divide the SFC into three alternative sequences.&nbsp;<span style=\"font-size: medium;\">The block has one&nbsp;</span><i style=\"font-size: medium;\">StepOutput</i><span style=\"font-size: medium;\">&nbsp;</span><span style=\"font-size: medium;\">input to be preceded by a step and three&nbsp;</span><i style=\"font-size: medium;\">StepOutput</i><span style=\"font-size: medium;\">&nbsp;output to be followed by three transitions.&nbsp;</span></div><div style=\"font-size: 12px;\"><div style=\"font-size: medium;\"><br></div><div style=\"font-size: medium;\">When one of the three transitions is triggered, the SFC proceeds to one sequence only.</div></div></body></html>"));end AlternativeSplit3;
