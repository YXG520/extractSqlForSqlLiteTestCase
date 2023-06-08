set r [db eval $sql]
  lappend r scan [db status step] sort [db status sort]

set r [lsort -integer [db eval $sql]]
  return "$r scan [db status step] sort [db status sort]"

CREATE TABLE t1(a INTEGER PRIMARY KEY,b,c,d);
    INSERT INTO t1 VALUES(1,2,3,4);
    INSERT INTO t1 VALUES(2,3,4,5);
    INSERT INTO t1 VALUES(3,4,6,8);
    INSERT INTO t1 VALUES(4,5,10,15);
    INSERT INTO t1 VALUES(5,10,100,1000);
    CREATE INDEX t1b ON t1(b);
    CREATE INDEX t1c ON t1(c);
    SELECT * FROM t1;
  
CREATE TABLE t(a);
  CREATE INDEX ta ON t(a);
  INSERT INTO t(a) VALUES(1),(2);
  SELECT * FROM t ORDER BY a;
  SELECT * FROM t WHERE a<2 OR a<3 ORDER BY a;
  PRAGMA count_changes=ON;
  DELETE FROM t WHERE a<2 OR a<3;
  SELECT * FROM t;
  PRAGMA count_changes=OFF;
  DROP TABLE t;

CREATE TABLE t301 (
      c8 INTEGER PRIMARY KEY,
      c6 INTEGER,
      c4 INTEGER,
      c7 INTEGER,
      FOREIGN KEY (c4) REFERENCES series(c4)
  );
  CREATE INDEX t301_c6 on t301(c6);
  CREATE INDEX t301_c4 on t301(c4);
  CREATE INDEX t301_c7 on t301(c7);
  
  CREATE TABLE t302 (
      c1 INTEGER PRIMARY KEY,
      c8 INTEGER,
      c5 INTEGER,
      c3 INTEGER,
      c2 INTEGER,
      c4 INTEGER,
      FOREIGN KEY (c8) REFERENCES t301(c8)
  );
  CREATE INDEX t302_c3 on t302(c3);
  CREATE INDEX t302_c8_c3 on t302(c8, c3);
  CREATE INDEX t302_c5 on t302(c5);

CREATE TABLE t0(w);
  INSERT INTO t0(w) VALUES(1);
  CREATE TABLE t1(x INT, y INT PRIMARY KEY, z); 
  INSERT INTO t1 VALUES(0,111,222);
  CREATE INDEX t1zxy ON t1(z,x,y);
  SELECT y FROM t1
   WHERE (z=222 OR y=111)
     AND (false OR EXISTS(SELECT 1 FROM t0 WHERE t1.y));

