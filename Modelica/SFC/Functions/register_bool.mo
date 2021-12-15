within SFC.Functions;

function register_bool
 input String string;
 input Boolean bool_value;
 output Integer y;
algorithm
 y := C_register_bool(string,if bool_value then 1 else 0);
end register_bool;