

    ATTACH DATABASE 'test.db' AS orig;
    CREATE TRIGGER r1 AFTER INSERT ON orig.t1 BEGIN
      SELECT 'no-op';
    END;
  


    CREATE TABLE t5(x,y);
    CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
      SELECT 'no-op';
    END;
  


    DROP TRIGGER r5;
    CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
      SELECT 'no-op' FROM orig.t1;
    END;
  


      CREATE TEMP TABLE t6(p,q,r);
      CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT 'no-op' FROM temp.t6;
      END;
    


      CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT 'no-op' || (SELECT * FROM temp.t6);
      END;
    


      CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT 'no-op' FROM t1 WHERE x<(SELECT min(x) FROM temp.t6);
      END;
    


      CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT 'no-op' FROM t1 GROUP BY 1 HAVING x<(SELECT min(x) FROM temp.t6);
      END;
    


      CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        SELECT max(1,x,(SELECT min(x) FROM temp.t6)) FROM t1;
      END;
    


      CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        INSERT INTO t1 VALUES((SELECT min(x) FROM temp.t6),5);
      END;
    


      CREATE TRIGGER r5 AFTER INSERT ON t5 BEGIN
        DELETE FROM t1 WHERE x<(SELECT min(x) FROM temp.t6);
      END;
    


      CREATE TABLE t1(x);
      CREATE TABLE t2(a,b);
      CREATE TRIGGER x1 AFTER INSERT ON t1 BEGIN
        INSERT INTO t2(a,b) SELECT key, value FROM json_each(NEW.x);
      END;
      INSERT INTO t1(x) VALUES('{"a":1


      CREATE TABLE t3(y);
      ATTACH 'test.db' AS aux;
      INSERT INTO aux.t1(x) VALUES('{"b":2
