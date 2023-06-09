

      BEGIN;
      CREATE TABLE t10(a,b,c);
      INSERT INTO t10 VALUES(1,1,1);
      INSERT INTO t10 VALUES(1,2,2);
      INSERT INTO t10 VALUES(1,3,3);
    
INSERT INTO t10 VALUES(1,$i,$i)

      CREATE INDEX i10 ON t10(a,b);
      COMMIT;
      SELECT count(*) FROM t10;
    

S
