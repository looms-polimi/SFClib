int test_static(int opcode)
{
   static int status=0;         // stato interno
   int result;                  // valore ritornato
   switch(opcode)               // codice operazione con cui la chiami
   {
      case 1:                   // incrementa e ritorna -1
         status++;
         result=-1;
         break;
      case 2:                   // decementa e ritorna -1
         status--;
         if(status<0) status=0;
         result=-1;
         break;
      case 3:                   // ritorna lo stato
         result = status;
    }
    printf("Called with opcode=%d --> status=%d, result=%d\n",opcode,status,result);      // questo va a console
    return(result);
}

  
