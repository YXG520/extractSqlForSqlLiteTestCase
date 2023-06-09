

  CREATE TABLE t1(seq INTEGER PRIMARY KEY, val TEXT);
  INSERT INTO t1 VALUES
    (1, '-9999e99'),
    (2, '-9998.000e+99'),
    (3, '-9999.0'),
    (4, '-1'),
    (5, '-9999e-20'),
    (6, '0'),
    (7, '1e-30'),
    (8, '1e-29'),
    (9, '1'),
    (10,'1.00000000000000001'),
    (11,'+1.00001'),
    (12,'99e+99');
  SELECT *, '|'
    FROM t1 AS a, t1 AS b
   WHERE a.seq<b.seq
     AND decimal_cmp(a.val,b.val)>=0;



  SELECT *, '|'
    FROM t1 AS a, t1 AS b
   WHERE a.seq<>b.seq
     AND decimal_cmp(a.val,b.val)==0;



  SELECT *, '|'
    FROM t1 AS a, t1 AS b
   WHERE a.seq>b.seq
     AND decimal_cmp(a.val,b.val)<=0;



  SELECT seq FROM t1 ORDER BY val COLLATE decimal;



  SELECT seq FROM t1 ORDER BY val COLLATE decimal DESC;

