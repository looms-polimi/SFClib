within ProvaInOut;

model PLC_IO


 parameter String vec_name_real[:] = {"r1","r2"}; 
 parameter String vec_name_bool[:] = {"b1","b2","b3"}; 
 parameter Real vec_value_real[N_real] = {5,6};
 parameter Boolean vec_value_bool[N_bool] = {true, true, false};
 
 String A[N_real];
 Real B[N_real];

//protected
 final parameter Integer N_real=size(vec_name_real,1);
 final parameter Integer N_bool=size(vec_name_bool,1);

// memo controllo da fare se soluzione corretta:
// 1. non devono esserci nomi uguali in vector_name_real e vec_name_bool,
     // come? Modelica.Utilities.Strings.length() non funziona per stringhe di stringhe
     // potrebbe essere implicito nelle assegnazioni comunque
// 2. valori di vec_value_real devono essere tutti real e lo stesso per boolean
// 3. length(vec_name_real) == length(vec_value_real), e lo stesso per boolean

algorithm
for i in 1:N_real loop 
  A[i] := vec_name_real[i];
  B[i] := vec_value_real[i];
  SFC.Functions.register_real(vec_name_real[i],vec_value_real[i]);
end for; 

annotation(defaultComponentName="IO",
    defaultComponentPrefixes="inner",
    missingInnerMessage="Your model is using an outer \"PLC_IO\" component but an inner \"PLC_IO\" component is not defined. Drag PLC_IO your model to specify the PLC IO connections.",
    Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}})}));
end PLC_IO;