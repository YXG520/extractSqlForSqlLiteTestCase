

  SELECT tointeger(NULL);



  SELECT tointeger('');



  SELECT tointeger('   ');



  SELECT tointeger('1234');



  SELECT tointeger('   1234');



  SELECT tointeger('bad');



  SELECT tointeger('0xBAD');



  SELECT tointeger('123BAD');



  SELECT tointeger('0x123BAD');



  SELECT tointeger('123NO');



  SELECT tointeger('0x123NO');



  SELECT tointeger('-0x1');



  SELECT tointeger('-0x0');



  SELECT tointeger('0x0');



  SELECT tointeger('0x1');



  SELECT tointeger(-1);



  SELECT tointeger(-0);



  SELECT tointeger(0);



  SELECT tointeger(1);



  SELECT tointeger(-1.79769313486232e308 - 1);



  SELECT tointeger(-1.79769313486232e308);



  SELECT tointeger(-1.79769313486232e308 + 1);



  SELECT tointeger(-9223372036854775808 - 1);



  SELECT tointeger(-9223372036854775808);



  SELECT tointeger(-9223372036854775808 + 1);



  SELECT tointeger(-9223372036854775807 - 1);



  SELECT tointeger(-9223372036854775807);



  SELECT tointeger(-9223372036854775807 + 1);



  SELECT tointeger(-2147483648 - 1);



  SELECT tointeger(-2147483648);



  SELECT tointeger(-2147483648 + 1);



  SELECT tointeger(2147483647 - 1);



  SELECT tointeger(2147483647);



  SELECT tointeger(2147483647 + 1);



  SELECT tointeger(9223372036854775807 - 1);



  SELECT tointeger(9223372036854775807);



    SELECT tointeger(9223372036854775807 + 1);
  


  SELECT tointeger(1.79769313486232e308 - 1);



  SELECT tointeger(1.79769313486232e308);



  SELECT tointeger(1.79769313486232e308 + 1);



  SELECT tointeger(4503599627370496 - 1);



  SELECT tointeger(4503599627370496);



  SELECT tointeger(4503599627370496 + 1);



  SELECT tointeger(9007199254740992 - 1);



  SELECT tointeger(9007199254740992);



  SELECT tointeger(9007199254740992 + 1);



  SELECT tointeger(9223372036854775807 - 1);



  SELECT tointeger(9223372036854775807);



    SELECT tointeger(9223372036854775807 + 1);
  


    SELECT tointeger(9223372036854775808 - 1);
  


    SELECT tointeger(9223372036854775808);
  


    SELECT tointeger(9223372036854775808 + 1);
  


  SELECT tointeger(18446744073709551616 - 1);



  SELECT tointeger(18446744073709551616);



  SELECT tointeger(18446744073709551616 + 1);

SELECT toreal(-9223372036854775808 + 1);
{
