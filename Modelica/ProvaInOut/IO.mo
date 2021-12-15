within ProvaInOut;

model IO
 parameter Integer N_real = 3, N_bool = 3; 
 parameter String vec_name_real[:] = {"a","b","c"}; 
 parameter String vec_name_bool[:] = {"d","e","f"}; 
 parameter Real vec_value_real[N_real] = {0,1,2};// = {"0","true","5"};
 parameter Boolean vec_value_bool[N_bool] = {true, true, false};// = {"0","true","5"};
 
 String A[N_real];
 Real B[N_real];


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

annotation(
    Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}})}));
end IO;