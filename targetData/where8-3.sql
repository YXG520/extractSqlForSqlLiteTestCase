

    CREATE TABLE t2(d, e, f);
    CREATE INDEX i3 ON t2(d);
    CREATE INDEX i4 ON t2(e);

    INSERT INTO t2 VALUES(1,  NULL,         'I');
    INSERT INTO t2 VALUES(2,  'four',       'IV');
    INSERT INTO t2 VALUES(3,  NULL,         'IX');
    INSERT INTO t2 VALUES(4,  'sixteen',    'XVI');
    INSERT INTO t2 VALUES(5,  NULL,         'XXV');
    INSERT INTO t2 VALUES(6,  'thirtysix',  'XXXVI');
    INSERT INTO t2 VALUES(7,  'fortynine',  'XLIX');
    INSERT INTO t2 VALUES(8,  'sixtyeight', 'LXIV');
    INSERT INTO t2 VALUES(9,  'eightyone',  'LXXXIX');
    INSERT INTO t2 VALUES(10, NULL,         'C');
  


    SELECT a, d FROM t1, t2 WHERE b=e
  


    SELECT a, d FROM t1, t2 WHERE (a = 2 OR a = 3) AND d = 6
  


    SELECT a, d FROM t1, t2 WHERE (a = 2 OR a = 3) AND d = a
  


    SELECT a, d FROM t1, t2 WHERE (a = 2 OR a = 3) AND (d = +a OR e = 'sixteen')
     ORDER BY +a, +d;
  


    SELECT a, d 
    FROM t1, t2 
    WHERE (a = 2 OR a = 3) AND (d = +a OR e = 'sixteen')
    ORDER BY t1.rowid
  


    SELECT a, d 
    FROM t1, t2 
    WHERE a = 2 AND (d = a OR e = 'sixteen')
    ORDER BY t1.rowid
  


    SELECT a, d 
    FROM t1, t2 
    WHERE (a = 2 OR b = 'three') AND (d = a OR e = 'sixteen')
    ORDER BY t1.rowid
  


    SELECT a, d 
    FROM t1, t2 
    WHERE (a = 2 OR b = 'three' OR c = 'IX') AND (d = a OR e = 'sixteen')
    ORDER BY t1.rowid
  


    SELECT d FROM t2 WHERE e IS NULL OR e = 'four'
  


    SELECT a, d FROM t1, t2 WHERE (a=d OR b=e) AND a<5 ORDER BY a
  


    SELECT a, d FROM t1, t2 WHERE (a=d OR b=e) AND +a<5 ORDER BY a
  


    SELECT a, d FROM t1, t2 WHERE (a=d OR b=e) AND +a<5
  


    SELECT c FROM t1 WHERE a > (SELECT d FROM t2 WHERE e = b) OR a = 5
  


    SELECT c FROM t1, t2 WHERE a BETWEEN 1 AND 2 OR a = (
      SELECT sum(e IS NULL) FROM t2 AS inner WHERE t2.d>inner.d
    )
    ORDER BY c
  


    SELECT a, d FROM t1, (t2) WHERE (a=d OR b=e) AND a<5 ORDER BY a
  


    SELECT a, d FROM t1, ((t2)) AS t3 WHERE (a=d OR b=e) AND a<5 ORDER BY a
  


    SELECT a, d FROM t1, ((SELECT * FROM t2)) AS t3 WHERE (a=d OR b=e) AND a<5 ORDER BY a
  


    SELECT a, d FROM ((((((t1))), (((t2))))))
     WHERE (a=d OR b=e) AND a<5 ORDER BY a
  


    SELECT * FROM ((SELECT * FROM t2)) AS t3;
  
