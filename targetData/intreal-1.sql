

  SELECT intreal(5);



  SELECT intreal(5)=5, 6=intreal(6);



  SELECT intreal(7)=7.0, 8.0=intreal(8);



  SELECT typeof(intreal(9));



  SELECT 'a'||intreal(11)||'z';



  SELECT max(1.0,intreal(2),3.0), max(1,intreal(2),3);



  SELECT max(1.0,intreal(4),3.0), max(1,intreal(4),3);



  SELECT max(1.0,intreal(2),intreal(3),4.0),
         max(1,intreal(2),intreal(3),4);



  SELECT max(1.0,intreal(5),intreal(3),4.0),
         max(1,intreal(5),intreal(3),4);

