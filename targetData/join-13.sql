

  CREATE TABLE aa(a);
  CREATE TABLE bb(b);
  CREATE TABLE cc(c);

  INSERT INTO aa VALUES(45);
  INSERT INTO cc VALUES(45);
  INSERT INTO cc VALUES(45);



  SELECT * FROM aa LEFT JOIN bb, cc WHERE cc.c=aa.a;



  CREATE INDEX ccc ON cc(c);
  SELECT * FROM aa LEFT JOIN bb, cc WHERE cc.c=aa.a;

