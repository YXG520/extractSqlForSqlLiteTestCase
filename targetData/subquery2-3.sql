

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1 (id INTEGER PRIMARY KEY, data TEXT);
  INSERT INTO t1(id,data) VALUES(9,'nine-a');
  INSERT INTO t1(id,data) VALUES(10,'ten-a');
  INSERT INTO t1(id,data) VALUES(11,'eleven-a');
  CREATE TABLE t2 (id INTEGER PRIMARY KEY, data TEXT);
  INSERT INTO t2(id,data) VALUES(9,'nine-b');
  INSERT INTO t2(id,data) VALUES(10,'ten-b');
  INSERT INTO t2(id,data) VALUES(11,'eleven-b');
  
  SELECT id FROM (
    SELECT id,data FROM (
       SELECT * FROM t1 UNION ALL SELECT * FROM t2
    )
    WHERE id=10 ORDER BY data
  );



  SELECT data FROM (
     SELECT 'dummy', data FROM (
       SELECT data FROM t1 UNION ALL SELECT data FROM t1
     ) ORDER BY data
  );



  DROP TABLE IF EXISTS t3;
  DROP TABLE IF EXISTS t4;
  CREATE TABLE t3(id INTEGER, data TEXT);
  CREATE TABLE t4(id INTEGER, data TEXT);
  INSERT INTO t3 VALUES(4, 'a'),(2,'c');
  INSERT INTO t4 VALUES(3, 'b'),(1,'d');

  SELECT data, id FROM (
    SELECT id, data FROM (
       SELECT * FROM t3 UNION ALL SELECT * FROM t4
    ) ORDER BY data
  );

