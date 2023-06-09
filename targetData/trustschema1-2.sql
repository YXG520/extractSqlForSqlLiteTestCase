

  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1,2,3),(100,50,75),(-11,22,-33);
  CREATE VIEW v1a AS SELECT f3(a+b) FROM t1;
  SELECT f3(a+b) FROM t1;



  PRAGMA trusted_schema=ON;
  SELECT * FROM v1a;



  PRAGMA trusted_schema=OFF;
  SELECT * FROM v1a;



  DROP VIEW v1a;
  CREATE TEMP VIEW v1a AS SELECT f3(a+b) FROM t1;
  SELECT * FROM v1a;



  CREATE VIEW v1b AS SELECT f2(b+c) FROM t1;
  SELECT f2(b+c) FROM t1;



  PRAGMA trusted_schema=ON;
  SELECT * FROM v1b;



  PRAGMA trusted_schema=OFF;
  SELECT * FROM v1b;



  DROP VIEW v1b;
  CREATE TEMP VIEW v1b AS SELECT f2(b+c) FROM t1;
  SELECT * FROM v1b;

