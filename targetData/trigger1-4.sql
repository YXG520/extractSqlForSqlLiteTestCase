

      CREATE TEMP TRIGGER r1 BEFORE INSERT ON t1 BEGIN
        INSERT INTO t2 VALUES(NEW.a,NEW.b);
      END;
      INSERT INTO t1 VALUES(7,8);
      SELECT * FROM t2;
    


      INSERT INTO t1 VALUES(9,10);
    

      SELECT * FROM t2;
    


      DROP TABLE t1;
      SELECT * FROM t2;
    


      SELECT * FROM t2;
    

    CREATE TABLE t2(x,y);
    DROP TABLE t1;
    INSERT INTO t2 VALUES(3, 4);
    INSERT INTO t2 VALUES(7, 8);
  
