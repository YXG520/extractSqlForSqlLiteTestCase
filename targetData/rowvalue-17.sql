

  CREATE TABLE b1(a, b);
  CREATE TABLE b2(x);



  SELECT * FROM b2 CROSS JOIN b1 
  WHERE b2.x=b1.a AND (b1.a, 2) 
  IN (VALUES(1, 2));

