

  ATTACH 'test.db2' AS '123';
  PRAGMA "123".auto_vacuum = OFF;
  CREATE TABLE "123".x1(a, b);
  INSERT INTO x1 VALUES(1, 2);



  SELECT * FROM dbstat('123');



  SELECT * FROM dbstat(123);



  CREATE VIRTUAL TABLE x2 USING dbstat('123');
  SELECT * FROM x2;



  CREATE VIRTUAL TABLE x3 USING dbstat(123);
  SELECT * FROM x3;



  DETACH 123;
  DROP TABLE x2;
  DROP TABLE x3;
  ATTACH 'test.db2' AS '123corp';



  SELECT * FROM dbstat('123corp');



  SELECT * FROM dbstat(123corp);



  CREATE VIRTUAL TABLE x2 USING dbstat('123corp');
  SELECT * FROM x2;



  CREATE VIRTUAL TABLE x3 USING dbstat(123corp);
  SELECT * FROM x3;

