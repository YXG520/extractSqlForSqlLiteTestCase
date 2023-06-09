

    CREATE TABLE t3(a);
    INSERT INTO t3 VALUES(1);
    INSERT INTO t3 SELECT a+1 FROM t3;
    INSERT INTO t3 SELECT a+2 FROM t3;
    SELECT * FROM t3;
  


      CREATE TABLE cnt(del);
      INSERT INTO cnt VALUES(0);
      CREATE TRIGGER r1 AFTER DELETE ON t3 FOR EACH ROW BEGIN
        UPDATE cnt SET del=del+1;
      END;
      DELETE FROM t3 WHERE a<2;
      SELECT * FROM t3;
    


      SELECT * FROM cnt;
    


      DELETE FROM t3;
      SELECT * FROM t3;
    


      SELECT * FROM cnt;
    


      INSERT INTO t3 VALUES(1);
      INSERT INTO t3 SELECT a+1 FROM t3;
      INSERT INTO t3 SELECT a+2 FROM t3;
      CREATE TABLE t4 AS SELECT * FROM t3;
      PRAGMA count_changes=ON;
      DELETE FROM t3;
      DELETE FROM t4;
    
DELETE FROM t3
