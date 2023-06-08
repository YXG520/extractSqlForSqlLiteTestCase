SELECT 'abc' LIKE X'ABCD';
  
SELECT 'abc' LIKE zeroblob(10);
  
SELECT zeroblob(10) LIKE 'abc';
  
SELECT (- -21) % NOT (456 LIKE zeroblob(10));
  
SELECT (SELECT (
        SELECT (SELECT -2147483648) FROM (SELECT 1) ORDER BY 1
    ))
  
SELECT 'abc', zeroblob(1) FROM (SELECT 1) ORDER BY 1
  
SELECT 'abc', zeroblob(1)
SELECT ( SELECT zeroblob(1000) FROM ( 
      SELECT * FROM (SELECT 'first') ORDER BY NOT 'in') 
    )
  
SELECT zeroblob(1000)
SELECT CAST(zeroblob(1000) AS text);
  
SELECT 1 FROM (SELECT * FROM sqlite_master WHERE random())
  
SELECT coalesce(1, substr( 1, 2, length('in' IN (SELECT 1))))
  
SELECT 'A' FROM (SELECT 'B') ORDER BY EXISTS (
      SELECT 'C' FROM (SELECT 'D' LIMIT 0)
    )
  
CREATE TABLE abc(b);
    INSERT INTO abc VALUES('ABCDE');
  
SELECT 1 IN ( SELECT b UNION SELECT 1 ) FROM (SELECT b FROM abc);
  
DROP TABLE abc;
  
SELECT 'abcd' UNION SELECT 'efgh' ORDER BY 1 ASC, 1 ASC;
  
CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(123, 456, 789);
  
SELECT 1 FROM abc
    GROUP BY c HAVING EXISTS (SELECT a UNION SELECT 123);
  
DROP TABLE abc;
  
SELECT hex(CAST(zeroblob(1000) AS integer))
  
CREATE TABLE abc(a, b, c);
    CREATE TABLE def(a, b, c);
    CREATE TABLE ghi(a, b, c);
  
SELECT DISTINCT EXISTS(
       SELECT 1
       FROM (
         SELECT C FROM (SELECT 1)
       )
       WHERE (SELECT c)
    )
    FROM abc
  
SELECT DISTINCT substr(-456 ISNULL,zeroblob(1000), EXISTS(
         SELECT DISTINCT EXISTS(
           SELECT DISTINCT b FROM abc
           ORDER BY EXISTS (
             SELECT DISTINCT 2147483647 UNION ALL SELECT -2147483648
           ) ASC
         )
         FROM (
           SELECT c, c FROM (
             SELECT 456, 'injection' ORDER BY 56.1 ASC, -56.1 DESC
           )
         )
         GROUP BY (SELECT ALL (SELECT DISTINCT 'hardware')) 
         HAVING (
           SELECT DISTINCT c
           FROM (
             SELECT ALL -2147483648, 'experiments'
             ORDER BY -56.1 ASC, -56.1 DESC
           )
           GROUP BY (SELECT DISTINCT 456) IN 
                   (SELECT DISTINCT 'injection') NOT IN (SELECT ALL -456)
           HAVING EXISTS (
             SELECT ALL 'injection'
           )
         )
         UNION ALL
         SELECT a IN (
           SELECT -2147483647
           UNION ALL
           SELECT ALL 'injection'
         )
         FROM sqlite_master
       ) -- end EXISTS
    ) /* end SUBSTR() */, c NOTNULL ISNULL
    FROM abc
    ORDER BY CAST(-56.1 AS blob) ASC
  
DROP TABLE abc; DROP TABLE def; DROP TABLE ghi;
  
SELECT 'hardware', 56.1 NOTNULL, random()&0
    FROM (
       SELECT ALL lower(~ EXISTS (
           SELECT 1 NOT IN (SELECT ALL 1)
       )), CAST(456 AS integer), -2147483647
       FROM (
         SELECT DISTINCT -456, CAST(1 AS integer) ISNULL
         FROM (SELECT ALL 2147483647, typeof(2147483649))
       )
    )
    GROUP BY CAST(CAST('experiments' AS blob) AS blob)
    HAVING random()
  
SELECT -2147483649 << upper('fault' NOT IN (
        SELECT ALL (
           SELECT ALL -1
           ORDER BY -2147483649
           LIMIT (
              SELECT ALL (
                 SELECT 0 EXCEPT SELECT DISTINCT 'experiments' ORDER BY 1 ASC
              )
           )
           OFFSET EXISTS (
              SELECT ALL 
                  (SELECT ALL -2147483648) NOT IN (
                     SELECT ALL 123456789.1234567899
                  ) IN (SELECT 2147483649) 
              FROM sqlite_master
           ) NOT IN (SELECT ALL 'The')
        )
     ))
  
CREATE TABLE t1(a) 
INSERT INTO t1 VALUES( 
      CASE WHEN NULL THEN NULL ELSE ( SELECT 0 ORDER BY 456 ) END 
    )
  
DROP TABLE t1 
CREATE TABLE abc(a, b, c);
    CREATE TABLE def(a, b, c);
    CREATE TABLE ghi(a, b, c);
  
INSERT INTO abc VALUES(1, 2, 3);
    INSERT INTO abc VALUES(4, 5, 6);
    INSERT INTO abc VALUES(7, 8, 9);
    INSERT INTO def VALUES(1, 2, 3);
    INSERT INTO def VALUES(4, 5, 6);
    INSERT INTO def VALUES(7, 8, 9);
    INSERT INTO ghi VALUES(1, 2, 3);
    INSERT INTO ghi VALUES(4, 5, 6);
    INSERT INTO ghi VALUES(7, 8, 9);
    CREATE INDEX abc_i ON abc(a, b, c);
    CREATE INDEX def_i ON def(c, a, b);
    CREATE INDEX ghi_i ON ghi(b, c, a);
  




