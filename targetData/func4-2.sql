

    SELECT toreal(NULL);
  


    SELECT toreal('');
  


    SELECT toreal('   ');
  


    SELECT toreal('1234');
  


    SELECT toreal('   1234');
  


    SELECT toreal('bad');
  


    SELECT toreal('0xBAD');
  


    SELECT toreal('123BAD');
  


    SELECT toreal('0x123BAD');
  


    SELECT toreal('123NO');
  


    SELECT toreal('0x123NO');
  


    SELECT toreal('-0x1');
  


    SELECT toreal('-0x0');
  


    SELECT toreal('0x0');
  


    SELECT toreal('0x1');
  


    SELECT toreal(-1);
  


    SELECT toreal(-0);
  


    SELECT toreal(0);
  


    SELECT toreal(1);
  


    SELECT toreal(-1.79769313486232e308 - 1);
  


    SELECT toreal(-1.79769313486232e308);
  


    SELECT toreal(-1.79769313486232e308 + 1);
  


    SELECT toreal(-9223372036854775808 - 1);
  


    SELECT toreal(-9223372036854775808);
  


      SELECT toreal(-9223372036854775808 + 1);
    


    SELECT toreal(-9223372036854775807 - 1);
  


      SELECT toreal(-9223372036854775807);
    


      SELECT toreal(-9223372036854775807 + 1);
    


    SELECT toreal(-2147483648 - 1);
  


    SELECT toreal(-2147483648);
  


    SELECT toreal(-2147483648 + 1);
  


    SELECT toreal(2147483647 - 1);
  


    SELECT toreal(2147483647);
  


    SELECT toreal(2147483647 + 1);
  


      SELECT toreal(9223372036854775807 - 1);
    


        SELECT toreal(9223372036854775807);
      


    SELECT toreal(9223372036854775807 + 1);
  


    SELECT toreal(1.79769313486232e308 - 1);
  


    SELECT toreal(1.79769313486232e308);
  


    SELECT toreal(1.79769313486232e308 + 1);
  


    SELECT toreal(4503599627370496 - 1);
  


    SELECT toreal(4503599627370496);
  


    SELECT toreal(4503599627370496 + 1);
  


    SELECT toreal(9007199254740992 - 1);
  


    SELECT toreal(9007199254740992);
  


      SELECT toreal(9007199254740992 + 1);
    


    SELECT toreal(9007199254740992 + 2);
  


    SELECT toreal(tointeger(9223372036854775808) - 1);
  


      SELECT toreal(tointeger(9223372036854775808));
    


      SELECT toreal(tointeger(9223372036854775808) + 1);
    


    SELECT toreal(tointeger(18446744073709551616) - 1);
  


    SELECT toreal(tointeger(18446744073709551616));
  


    SELECT toreal(tointeger(18446744073709551616) + 1);
  
