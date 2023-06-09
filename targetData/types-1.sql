

    CREATE TABLE t1(i integer, n numeric, t text, o blob);
  
DELETE FROM t1;
INSERT INTO t1 VALUES($lit, $lit, $lit, $lit);


      SELECT typeof(i), typeof(n), typeof(t), typeof(o) FROM t1;
    
DELETE FROM t1;
INSERT INTO t1 SELECT $lit, $lit, $lit, $lit;


      SELECT typeof(i), typeof(n), typeof(t), typeof(o) FROM t1;
    
UPDATE t1 SET i = $lit, n = $lit, t = $lit, o = $lit;


      SELECT typeof(i), typeof(n), typeof(t), typeof(o) FROM t1;
    

  DROP TABLE t1;

