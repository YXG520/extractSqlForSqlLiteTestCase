

  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(673,'stone','philips');
  SELECT * FROM t1;



  SELECT * FROM t1;



  UPDATE t1 SET a=537;

CREATE TABLE t2(x,y,z)


  UPDATE t1 SET a=948;



  SELECT * FROM t1;



  UPDATE t1 SET a=537;
  SELECT * FROM t1;



  PRAGMA journal_mode=OFF;
  UPDATE t1 SET a=107;
  SELECT * FROM t1;



  PRAGMA journal_mode=MEMORY;
  UPDATE t1 SET b='magpie';
  SELECT * FROM t1;



  PRAGMA journal_mode=DELETE;
  UPDATE t1 SET c='jaguar';



  PRAGMA journal_mode=TRUNCATE;
  UPDATE t1 SET c='jaguar';



  PRAGMA journal_mode=PERSIST;
  UPDATE t1 SET c='jaguar';

