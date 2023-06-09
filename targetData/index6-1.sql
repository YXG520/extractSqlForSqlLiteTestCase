

    CREATE TABLE t1(a,b,c);
    CREATE INDEX t1a ON t1(a) WHERE a IS NOT NULL;
    CREATE INDEX t1b ON t1(b) WHERE b>10;
    CREATE VIRTUAL TABLE nums USING wholenumber;
    INSERT INTO t1(a,b,c)
       SELECT CASE WHEN value%3!=0 THEN value END, value, value
         FROM nums WHERE value<=20;
    SELECT count(a), count(b) FROM t1;
    PRAGMA integrity_check;
  


  SELECT count(*) FROM t1;



    CREATE INDEX bad1 ON t1(a,b) WHERE x IS NOT NULL;
  


    CREATE INDEX bad1 ON t1(a,b) WHERE EXISTS(SELECT * FROM t1);
  


    CREATE INDEX bad1 ON t1(a,b) WHERE a!=?1;
  


    CREATE INDEX bad1 ON t1(a,b) WHERE a!=random();
  


    CREATE INDEX bad1 ON t1(a,b) WHERE a NOT LIKE 'abc%';
  


  DROP INDEX IF EXISTS bad1;



    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  


    UPDATE t1 SET a=b;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  


    UPDATE t1 SET a=NULL WHERE b%3!=0;
    UPDATE t1 SET b=b+100;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  


    UPDATE t1 SET a=CASE WHEN b%3!=0 THEN b END;
    UPDATE t1 SET b=b-100;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  


    DELETE FROM t1 WHERE b BETWEEN 8 AND 12;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  


    REINDEX;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  


    CREATE INDEX t1c ON t1(c);
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  
