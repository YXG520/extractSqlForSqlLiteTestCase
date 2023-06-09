

  DROP TABLE IF EXISTS t1;
  CREATE TABLE IF NOT EXISTS t1(id INTEGER PRIMARY KEY);
  INSERT INTO t1 VALUES(1);
  SELECT a.id FROM t1 AS a JOIN t1 AS b ON a.id=b.id WHERE a.id IN (1,2,3);



  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(a INTEGER PRIMARY KEY,b);
  INSERT INTO t2 VALUES(1,11);
  INSERT INTO t2 VALUES(2,22);
  INSERT INTO t2 VALUES(3,33);
  SELECT b, a IN (3,4,5) FROM t2 ORDER BY b;



  DROP TABLE IF EXISTS t3;
  CREATE TABLE t3(x INTEGER PRIMARY KEY);
  INSERT INTO t3 VALUES(8);
  SELECT CASE WHEN x NOT IN (5,6,7) THEN 'yes' ELSE 'no' END FROM t3;
  SELECT CASE WHEN x NOT IN (NULL,6,7) THEN 'yes' ELSE 'no' END FROM t3;



  SELECT CASE WHEN x NOT IN (5,6,7) OR x=0 THEN 'yes' ELSE 'no' END FROM t3;
  SELECT CASE WHEN x NOT IN (NULL,6,7) OR x=0 THEN 'yes' ELSE 'no' END FROM t3;



  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(a INTEGER PRIMARY KEY, b INT);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<20)
    INSERT INTO t4(a,b) SELECT x, x+100 FROM c;
  SELECT b FROM t4 WHERE a IN (3,null,8) ORDER BY +b;



  SELECT b FROM t4 WHERE a NOT IN (3,null,8);



  DROP TABLE IF EXISTS t5;
  DROP TABLE IF EXISTS t6;
  CREATE TABLE t5(id INTEGER PRIMARY KEY, name TEXT);
  CREATE TABLE t6(id INTEGER PRIMARY KEY, name TEXT, t5_id INT);
  INSERT INTO t5 VALUES(1,'Alice'),(2,'Emma');
  INSERT INTO t6 VALUES(1,'Bob',1),(2,'Cindy',1),(3,'Dave',2);
  SELECT a.*
    FROM t5 AS 'a' JOIN t5 AS 'b' ON b.id=a.id
   WHERE b.id IN (
          SELECT t6.t5_id
            FROM t6
           WHERE name='Bob'
             AND t6.t5_id IS NOT NULL
             AND t6.id IN (
                  SELECT id
                    FROM (SELECT t6.id, count(*) AS x
                            FROM t6
                           WHERE name='Bob'
                         ) AS 't'
                   WHERE x=1
                 )
             AND t6.id IN (1,id)
         );

