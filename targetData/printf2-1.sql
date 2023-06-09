

  SELECT quote(format()), quote(format(NULL,1,2,3));



  SELECT printf('hello');



  SELECT format('%d,%d,%d',55,-11,3421);



  SELECT printf('%d,%d,%d',55,'-11',3421);



  SELECT format('%d,%d,%d,%d',55,'-11',3421);



  SELECT printf('%.2f',3.141592653);



  SELECT format('%.*f',2,3.141592653);



  SELECT printf('%*.*f',5,2,3.141592653);



  SELECT format('%d',314159.2653);



  SELECT printf('%lld',314159.2653);



  SELECT format('%lld%n',314159.2653,'hi');



  SELECT printf('%n',0);



  SELECT format('%.*z',5,'abcdefghijklmnop');



  SELECT printf('%c','abcdefghijklmnop');

