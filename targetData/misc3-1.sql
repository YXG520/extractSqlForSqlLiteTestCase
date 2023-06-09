

      CREATE TABLE t1(a UNIQUE,b);
      INSERT INTO t1
        VALUES(1,'a23456789_b23456789_c23456789_d23456789_e23456789_');
      UPDATE t1 SET b=b||b;
      UPDATE t1 SET b=b||b;
      UPDATE t1 SET b=b||b;
      UPDATE t1 SET b=b||b;
      UPDATE t1 SET b=b||b;
      INSERT INTO t1 VALUES(2,'x');
      UPDATE t1 SET b=substr(b,1,500);
      BEGIN;
    
UPDATE t1 SET a=CASE a WHEN 2 THEN 1 ELSE a END, b='y';

      CREATE TABLE t2(x,y);
      COMMIT;
      PRAGMA integrity_check;
    


      DROP TABLE t1;
      DROP TABLE t2;
    

      CREATE TABLE t1(a UNIQUE,b);
      INSERT INTO t1
      VALUES(1,'a23456789_b23456789_c23456789_d23456789_e23456789_');
      INSERT INTO t1 SELECT a+1, b||b FROM t1;
      INSERT INTO t1 SELECT a+2, b||b FROM t1;
      INSERT INTO t1 SELECT a+4, b FROM t1;
      INSERT INTO t1 SELECT a+8, b FROM t1;
      INSERT INTO t1 SELECT a+16, b FROM t1;
      INSERT INTO t1 SELECT a+32, b FROM t1;
      INSERT INTO t1 SELECT a+64, b FROM t1;
      BEGIN;
    
UPDATE t1 SET a=CASE a WHEN 128 THEN 127 ELSE a END, b='';

      INSERT INTO t1 VALUES(200,'hello out there');
      COMMIT;
      PRAGMA integrity_check;
    
