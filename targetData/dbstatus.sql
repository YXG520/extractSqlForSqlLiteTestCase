proc do_cacheused_test {tn db res
PRAGMA auto_vacuum=NONE;
      CREATE TABLE t1(a, b, c);
      INSERT INTO t1 VALUES(1, 2, 3);
    
CREATE TEMP TABLE tt(a, b, c);
      INSERT INTO tt VALUES(1, 2, 3);
    
CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);

