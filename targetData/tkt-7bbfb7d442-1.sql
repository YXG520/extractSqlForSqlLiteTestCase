

  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');
  INSERT INTO t1 VALUES(3, 'three');

  CREATE TABLE t2(c, d);
  INSERT INTO t2 VALUES('one', 'I');
  INSERT INTO t2 VALUES('two', 'II');
  INSERT INTO t2 VALUES('three', 'III');

  CREATE TABLE t3(t3_a PRIMARY KEY, t3_d);
  CREATE TRIGGER t3t AFTER INSERT ON t3 WHEN new.t3_d IS NULL BEGIN
    UPDATE t3 SET t3_d = (
      SELECT d FROM 
        (SELECT * FROM t2 WHERE (new.t3_a%2)=(rowid%2) LIMIT 10),
        (SELECT * FROM t1 WHERE (new.t3_a%2)=(rowid%2) LIMIT 10)
      WHERE a = new.t3_a AND b = c
    ) WHERE t3_a = new.t3_a;
  END;



  INSERT INTO t3(t3_a) VALUES(1);
  INSERT INTO t3(t3_a) VALUES(2);
  INSERT INTO t3(t3_a) VALUES(3);
  SELECT * FROM t3;


 DELETE FROM t3 


    INSERT INTO t3(t3_a) SELECT 1 UNION SELECT 2 UNION SELECT 3;
    SELECT * FROM t3;
  
