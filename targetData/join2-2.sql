

  CREATE TABLE aa(a);
  CREATE TABLE bb(b);
  CREATE TABLE cc(c);
  INSERT INTO aa VALUES('one');
  INSERT INTO bb VALUES('one');
  INSERT INTO cc VALUES('one');



  SELECT * FROM aa LEFT JOIN cc ON (a=b) JOIN bb ON (b=coalesce(c,1));



  SELECT * FROM aa RIGHT JOIN cc ON (a=b) JOIN bb ON (b=coalesce(c,1));



  SELECT * FROM aa JOIN cc ON (a=b) JOIN bb ON (b=c);

