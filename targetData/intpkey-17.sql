

  CREATE TABLE t17(x INTEGER PRIMARY KEY, y TEXT);
  INSERT INTO t17(x,y) VALUES(123,'elephant'),(248,'giraffe');
  CREATE INDEX t17x ON t17(x);
  DELETE FROM t17 WHERE x=99 OR x<130;
  SELECT * FROM t17;



  DROP INDEX t17x;
  DELETE FROM t17;
  INSERT INTO t17(x,y) VALUES(123,'elephant'),(248,'giraffe');
  CREATE UNIQUE INDEX t17x ON t17(abs(x));
  DELETE FROM t17 WHERE abs(x) IS NULL OR abs(x)<130;
  SELECT * FROM t17;



  DELETE FROM t17;
  INSERT INTO t17(x,y) VALUES(123,'elephant'),(248,'giraffe');
  UPDATE t17 SET y='ostrich' WHERE abs(x)=248;
  SELECT * FROM t17 ORDER BY +x;

