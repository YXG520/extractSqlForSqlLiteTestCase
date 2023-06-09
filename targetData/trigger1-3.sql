

      CREATE TEMP TABLE t2(x,y);
    

      CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
        INSERT INTO t2 VALUES(NEW.a,NEW.b);
      END;
    


      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    



      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    


      CREATE TEMP TABLE t2(x,y);
      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    


      DROP TRIGGER r1;
      CREATE TEMP TRIGGER r1 AFTER INSERT ON t1 BEGIN
        INSERT INTO t2 VALUES(NEW.a,NEW.b), (NEW.b*100, NEW.a*100);
      END;
      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    


      DROP TRIGGER r1;
      DELETE FROM t1;
      DELETE FROM t2;
      CREATE TEMP TRIGGER r1 AFTER INSERT ON t1 BEGIN
        INSERT INTO t2 VALUES(NEW.a,NEW.b);
      END;
      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t2;
    


      DROP TABLE t2;
      CREATE TABLE t2(x,y);
      SELECT * FROM t2;
    


      INSERT INTO t1 VALUES(3,4);
      SELECT * FROM t1 UNION ALL SELECT * FROM t2;
    


      INSERT INTO t1 VALUES(5,6);
      SELECT * FROM t1 UNION ALL SELECT * FROM t2;
    


      INSERT INTO t1 VALUES(3,4);
      SELECT * FROM t1; 
      SELECT * FROM t2;
    


      INSERT INTO t1 VALUES(5,6);
      SELECT * FROM t1;
      SELECT * FROM t2;
    
