

    BEGIN;
    CREATE TABLE t12(a,b);
    INSERT INTO t12 VALUES(1,11);
    INSERT INTO t12 VALUES(2,22);
    CREATE TABLE t13(b,c);
    INSERT INTO t13 VALUES(22,222);
    COMMIT;
  


      SELECT * FROM t12 NATURAL LEFT JOIN t13
      EXCEPT
      SELECT * FROM t12 NATURAL LEFT JOIN (SELECT * FROM t13 WHERE b>0);
    


      CREATE VIEW v13 AS SELECT * FROM t13 WHERE b>0;
      SELECT * FROM t12 NATURAL LEFT JOIN t13
        EXCEPT
        SELECT * FROM t12 NATURAL LEFT JOIN v13;
    
