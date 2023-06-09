

      CREATE TABLE t1(a INTEGER PRIMARY KEY, b UNIQUE);
      INSERT INTO t1 VALUES(1,2);
      INSERT INTO t1 VALUES(2,3);
      SELECT b FROM t1 WHERE b=2;
    


      REPLACE INTO t1 VALUES(1,4);
      SELECT b FROM t1 WHERE b=2;
    


      UPDATE OR REPLACE t1 SET a=2 WHERE b=4;
      SELECT * FROM t1 WHERE b=4;
    


      SELECT * FROM t1 WHERE b=3;
    



      DROP TABLE t1;
    
