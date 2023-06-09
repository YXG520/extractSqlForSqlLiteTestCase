

    DROP TABLE t2;
    CREATE TABLE t2(x INTEGER PRIMARY KEY, y, z);
    INSERT INTO t2 VALUES(NULL, 1, 2);
    SELECT * from t2;
  


    INSERT INTO t2 VALUES(NULL, 2, 3);
    SELECT * from t2 WHERE x=2;
  


    INSERT INTO t2 SELECT NULL, z, y FROM t2;
    SELECT * FROM t2;
  
