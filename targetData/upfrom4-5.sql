

    CREATE TABLE t1(abc INT, def INT);  
    INSERT INTO t1 VALUES(0,0);
    INSERT INTO t1 VALUES(0,0);
    INSERT INTO t1 VALUES(0,0);
    CREATE TABLE dual(dummy TEXT);  
    INSERT INTO dual(dummy) VALUES('X');
  


    UPDATE t1
      SET (abc, def)=(SELECT  x, 123)
      FROM dual LEFT JOIN (SELECT 789 AS 'x' FROM dual) AS d2
      LIMIT 2
  


    SELECT * FROM t1
  
