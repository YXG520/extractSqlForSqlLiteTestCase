
SELECT '0'=='0.0'

SELECT '0'==0.0

SELECT '12345678901234567890'=='12345678901234567891'


    CREATE TABLE t6(a INT UNIQUE, b TEXT UNIQUE);
    INSERT INTO t6 VALUES('0','0.0');
    SELECT * FROM t6;
  


      INSERT OR IGNORE INTO t6 VALUES(0.0,'x');
      SELECT * FROM t6;
    


      INSERT OR IGNORE INTO t6 VALUES('y',0);
      SELECT * FROM t6;
    


    CREATE TABLE t7(x INTEGER, y TEXT, z);
    INSERT INTO t7 VALUES(0,0,1);
    INSERT INTO t7 VALUES(0.0,0,2);
    INSERT INTO t7 VALUES(0,0.0,3);
    INSERT INTO t7 VALUES(0.0,0.0,4);
    SELECT DISTINCT x, y FROM t7 ORDER BY z;
  


    SELECT min(z), max(z), count(z) FROM t7 GROUP BY x ORDER BY 1;
  


    SELECT min(z), max(z), count(z) FROM t7 GROUP BY y ORDER BY 1;
  

#    SELECT * FROM t6 ORDER BY a COLLATE unknown;
#  


    CREATE TABLE t8(x TEXT COLLATE numeric, y INTEGER COLLATE text, z);
    INSERT INTO t8 VALUES(0,0,1);
    INSERT INTO t8 VALUES(0.0,0,2);
    INSERT INTO t8 VALUES(0,0.0,3);
    INSERT INTO t8 VALUES(0.0,0.0,4);
    SELECT DISTINCT x, y FROM t8 ORDER BY z;
  


    SELECT min(z), max(z), count(z) FROM t8 GROUP BY x ORDER BY 1;
  


    SELECT min(z), max(z), count(z) FROM t8 GROUP BY y ORDER BY 1;
  