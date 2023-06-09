

  CREATE TABLE t3(a,b PRIMARY KEY) without rowid;
  INSERT INTO t3 SELECT value, value FROM nums WHERE value<200;
  UPDATE t3 SET a=999 WHERE b%5!=0;
  CREATE UNIQUE INDEX t3a ON t3(a) WHERE a<>999;



    INSERT INTO t3(a,b) VALUES(150, 'test1');
  


    INSERT INTO t3(a,b) VALUES(999, 'test1'), (999, 'test2');
  


  SELECT count(*) FROM t3 WHERE a=999;

