

        CREATE TABLE t3(a,b);
        CREATE TABLE t4(x UNIQUE, b);
        CREATE TRIGGER r34 AFTER INSERT ON t3 BEGIN
          REPLACE INTO t4 VALUES(new.a,new.b);
        END;
        INSERT INTO t3 VALUES(1,2);
        SELECT * FROM t3 UNION ALL SELECT 99, 99 UNION ALL SELECT * FROM t4;
      


        INSERT INTO t3 VALUES(1,3);
        SELECT * FROM t3 UNION ALL SELECT 99, 99 UNION ALL SELECT * FROM t4;
      


        CREATE TABLE t3(a,b);
        CREATE TABLE t4(x UNIQUE, b);
        CREATE TRIGGER r34 AFTER INSERT ON t3 BEGIN
          REPLACE INTO t4 VALUES(new.a,new.b);
        END;
        INSERT INTO t3 VALUES(1,2);
        SELECT * FROM t3; SELECT 99, 99; SELECT * FROM t4;
      


        INSERT INTO t3 VALUES(1,3);
        SELECT * FROM t3; SELECT 99, 99; SELECT * FROM t4;
      

    DROP TABLE t3;
    DROP TABLE t4;
  
