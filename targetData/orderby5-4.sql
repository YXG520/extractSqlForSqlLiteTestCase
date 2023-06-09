

  CREATE TABLE t4(b COLLATE nocase);
  INSERT INTO t4 VALUES('abc');
  INSERT INTO t4 VALUES('ABC');
  INSERT INTO t4 VALUES('aBC');



  SELECT * FROM t4 ORDER BY b COLLATE binary



  SELECT * FROM t4 WHERE b='abc' ORDER BY b COLLATE binary



  CREATE TABLE Records(typeID INTEGER, key TEXT COLLATE nocase, value TEXT);
  CREATE INDEX RecordsIndex ON Records(typeID, key, value);



  explain query plan
  SELECT typeID, key, value FROM Records 
  WHERE typeID = 2 AND key = 'x' 
  ORDER BY key, value;



  explain query plan
  SELECT typeID, key, value FROM Records 
  WHERE typeID = 2 AND (key = 'x' COLLATE binary)
  ORDER BY key, value;



  explain query plan
  SELECT typeID, key, value FROM Records 
  WHERE typeID = 2 
  ORDER BY key, value;



  CREATE TABLE t5(a INTEGER PRIMARY KEY, b COLLATE hello, c, d);



  SELECT a FROM t5 WHERE b='def' ORDER BY b;



  DROP TABLE t1;
  CREATE TABLE t1(a);
  DROP TABLE t2;
  CREATE TABLE t2(b INTEGER PRIMARY KEY, c INT);
  SELECT DISTINCT *
    FROM t1 LEFT JOIN t2 ON b=c AND b=(SELECT a FROM t1)
   WHERE c>10;

