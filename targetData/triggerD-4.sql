

    CREATE TABLE t1(x);
    ATTACH 'test2.db' AS db2;
    CREATE TABLE db2.t2(y);
    CREATE TABLE db2.log(z);
    CREATE TRIGGER db2.trig AFTER INSERT ON db2.t2 BEGIN
      INSERT INTO log(z) VALUES(new.y);
    END;
    INSERT INTO t2 VALUES(123);
    SELECT * FROM log;
  


    INSERT INTO t2 VALUES(234);
    SELECT * FROM log;
  
