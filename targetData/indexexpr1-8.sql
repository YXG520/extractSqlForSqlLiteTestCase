

  DROP TABLE IF EXISTS t8;
  CREATE TABLE t8(a INTEGER PRIMARY KEY, b TEXT);
  CREATE UNIQUE INDEX t8bx ON t8(substr(b,2,4) COLLATE nocase);
  INSERT INTO t8(a,b) VALUES(1,'Alice'),(2,'Bartholemew'),(3,'Cynthia');
  SELECT * FROM t8 WHERE substr(b,2,4)='ARTH' COLLATE nocase;



  INSERT INTO t8(a,b) VALUES(4,'BARTHMERE');



  DROP INDEX t8bx;
  CREATE UNIQUE INDEX t8bx ON t8(substr(b,2,4) COLLATE rtrim);
  INSERT INTO t8(a,b) VALUES(4,'BARTHMERE');

