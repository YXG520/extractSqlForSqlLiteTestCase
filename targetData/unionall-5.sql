

  CREATE TABLE t1_a(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1_a VALUES(1,'one');
  INSERT INTO t1_a VALUES(0,NULL);
  CREATE TABLE t1_b(c INTEGER PRIMARY KEY, d TEXT);
  INSERT INTO t1_b VALUES(2,'two');
  INSERT INTO t1_b VALUES(5,'five');
  CREATE TABLE t1_c(e INTEGER PRIMARY KEY, f TEXT);
  INSERT INTO t1_c VALUES(3,'three');
  INSERT INTO t1_c VALUES(6,'six');
  CREATE TABLE t2(k,v);
  INSERT INTO t2 VALUES(5,'v');
  INSERT INTO t2 VALUES(4,'iv');
  INSERT INTO t2 VALUES(3,'iii');
  INSERT INTO t2 VALUES(2,'ii');
  CREATE TABLE t3_a(k INTEGER PRIMARY KEY, v TEXT);
  INSERT INTO t3_a VALUES(2,'ii');
  INSERT INTO t3_a VALUES(4,'iv');
  CREATE TABLE t3_b(k INTEG5R PRIMARY KEY, v TEXT);
  INSERT INTO t3_b VALUES(NULL,'iii');
  INSERT INTO t3_b VALUES(NULL,'v');
  CREATE VIEW t1 AS 
    SELECT a, b FROM t1_a   UNION ALL
    SELECT c, d FROM t1_b   UNION ALL
    SELECT e, f FROM t1_c;
  CREATE VIEW t3 AS 
      SELECT * FROM t3_a 
      UNION ALL 
      SELECT * FROM t3_b;
  CREATE TRIGGER t3_insert INSTEAD OF INSERT ON t3 BEGIN
      INSERT INTO t3_a SELECT new.k, new.v WHERE (new.k%2)==0;
      INSERT INTO t3_b SELECT new.k, new.v WHERE (new.k%2)==1;
  END;



  SELECT *, '+' FROM t1 LEFT JOIN t2 ON (a NOT IN(SELECT v FROM t1, t3 WHERE a=k)=NOT EXISTS(SELECT 1 FROM t1 LEFT JOIN t3 ON (a=k)));



  SELECT *, '+' FROM t1 LEFT JOIN t3 ON (a NOT IN(SELECT v FROM t1 LEFT JOIN t2 ON (a=k))=k);

