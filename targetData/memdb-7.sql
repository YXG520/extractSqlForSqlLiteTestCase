

      CREATE TABLE t6(x);
      CREATE VIRTUAL TABLE nums USING wholenumber;
      INSERT INTO t6 SELECT value FROM nums WHERE value BETWEEN 1 AND 256;
      SELECT count(*) FROM (SELECT DISTINCT x FROM t6);
    

DELETE FROM t6 WHERE x=\
                (SELECT x FROM t6 ORDER BY random() LIMIT 1)
SELECT count(*) FROM t6
