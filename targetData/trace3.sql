CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,NULL);
    INSERT INTO t1 VALUES(2,-1);
    INSERT INTO t1 VALUES(3,0);
    INSERT INTO t1 VALUES(4,1);
    INSERT INTO t1 VALUES(5,-2147483648);
    INSERT INTO t1 VALUES(6,2147483647);
    INSERT INTO t1 VALUES(7,-9223372036854775808);
    INSERT INTO t1 VALUES(8,9223372036854775807);
    INSERT INTO t1 VALUES(9,-1.0);
    INSERT INTO t1 VALUES(10,0.0);
    INSERT INTO t1 VALUES(11,1.0);
    INSERT INTO t1 VALUES(12,'');
    INSERT INTO t1 VALUES(13,'1');
    INSERT INTO t1 VALUES(14,'one');
    INSERT INTO t1 VALUES(15,x'abcd0123');
    INSERT INTO t1 VALUES(16,x'4567cdef');
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
SELECT a, b FROM t1 ORDER BY a;
  
CREATE TABLE nameFtsFuzzySearchTable(
      word, distance, langid, score, top, scope
    );
  
SELECT
      substr(word,1,length(?1)-1) AS term,
      distance,
      langid,
      score
    FROM
      nameFtsFuzzySearchTable
    WHERE
      word MATCH (?1) AND abs(?1) = abs(term)
      AND top = ?2 AND distance > ?3 AND scope = ?4 AND langid = ?
    GROUP BY term, langid 
    HAVING (1.0 - ((distance / 100.0) / CAST( length(?1) - 1 AS REAL ))) >= ?
  
