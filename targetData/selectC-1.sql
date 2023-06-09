

    CREATE TABLE t1(a, b, c);
    INSERT INTO t1 VALUES(1,'aaa','bbb');
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 VALUES(2,'ccc','ddd');

    SELECT DISTINCT a AS x, b||c AS y
      FROM t1
     WHERE y IN ('aaabbb','xxx');
  


    SELECT DISTINCT a AS x, b||c AS y
      FROM t1
     WHERE b||c IN ('aaabbb','xxx');
  


    SELECT DISTINCT a AS x, b||c AS y
      FROM t1
     WHERE y='aaabbb'
  


    SELECT DISTINCT a AS x, b||c AS y
      FROM t1
     WHERE b||c='aaabbb'
  


    SELECT DISTINCT a AS x, b||c AS y
      FROM t1
     WHERE x=2
  


    SELECT DISTINCT a AS x, b||c AS y
      FROM t1
     WHERE a=2
  


    SELECT DISTINCT a AS x, b||c AS y
      FROM t1
     WHERE +y='aaabbb'
  


    SELECT a AS x, b||c AS y
      FROM t1
     GROUP BY x, y
    HAVING y='aaabbb'
  


    SELECT a AS x, b||c AS y
      FROM t1
     GROUP BY x, y
    HAVING b||c='aaabbb'
  


    SELECT a AS x, b||c AS y
      FROM t1
     WHERE y='aaabbb'
     GROUP BY x, y
  


    SELECT a AS x, b||c AS y
      FROM t1
     WHERE b||c='aaabbb'
     GROUP BY x, y
  


    SELECT DISTINCT upper(b) AS x
      FROM t1
     ORDER BY x
  


    SELECT DISTINCT uppercaseconversionfunctionwithaverylongname(b) AS x
      FROM t1
     ORDER BY x
  


    SELECT upper(b) AS x
      FROM t1
     GROUP BY x
     ORDER BY x
  


    SELECT uppercaseconversionfunctionwithaverylongname(b) AS x
      FROM t1
     GROUP BY x
     ORDER BY x
  


    SELECT upper(b) AS x
      FROM t1
     ORDER BY x DESC
  


    SELECT uppercaseconversionfunctionwithaverylongname(b) AS x
      FROM t1
     ORDER BY x DESC
  
