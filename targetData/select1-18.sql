

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(c);
  CREATE TABLE t2(x PRIMARY KEY, y);
  INSERT INTO t1(c) VALUES(123);
  INSERT INTO t2(x) VALUES(123);
  SELECT x FROM t2, t1 WHERE x BETWEEN c AND null OR x AND
  x IN ((SELECT x FROM (SELECT x FROM t2, t1 
  WHERE x BETWEEN (SELECT x FROM (SELECT x COLLATE rtrim 
  FROM t2, t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)) AND null
  OR NOT EXISTS(SELECT -4.81 FROM t1, t2 WHERE x BETWEEN c AND null
  OR x AND x IN ((SELECT x FROM (SELECT x FROM t2, t1
  WHERE x BETWEEN (SELECT x FROM (SELECT x BETWEEN c AND null
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)) AND null
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)))) AND x IN (c)
  ), t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)));



  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(c);
  CREATE TABLE t2(x PRIMARY KEY, y);
  INSERT INTO t1(c) VALUES(123);
  INSERT INTO t2(x) VALUES(123);
  SELECT x FROM t2, t1 WHERE x BETWEEN c AND (c+1) OR x AND
  x IN ((SELECT x FROM (SELECT x FROM t2, t1 
  WHERE x BETWEEN (SELECT x FROM (SELECT x COLLATE rtrim 
  FROM t2, t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)) AND (c+1)
  OR NOT EXISTS(SELECT -4.81 FROM t1, t2 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN ((SELECT x FROM (SELECT x FROM t2, t1
  WHERE x BETWEEN (SELECT x FROM (SELECT x BETWEEN c AND (c+1)
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)) AND (c+1)
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)))) AND x IN (c)
  ), t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)));



  SELECT 1 FROM t1 WHERE (
    SELECT 2 FROM t2 WHERE (
      SELECT 3 FROM (
        SELECT x FROM t2 WHERE x=c OR x=(SELECT x FROM (VALUES(0)))
      ) WHERE x>c OR x=c
    )
  );



  SELECT 1 FROM t1, t2 WHERE (
    SELECT 3 FROM (
      SELECT x FROM t2 WHERE x=c OR x=(SELECT x FROM (VALUES(0)))
    ) WHERE x>c OR x=c
  );

