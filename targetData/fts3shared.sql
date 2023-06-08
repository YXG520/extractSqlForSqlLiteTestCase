CREATE VIRTUAL TABLE t1 USING fts3(x);
  BEGIN;
  INSERT INTO t1 VALUES('We listened and looked sideways up!');
  INSERT INTO t1 VALUES('Fear at my heart, as at a cup,');
  INSERT INTO t1 VALUES('My life-blood seemed to sip!');
  INSERT INTO t1 VALUES('The stars were dim, and thick the night');
  COMMIT;

BEGIN;
    INSERT INTO t1 VALUES('The steersman''s face by his lamp gleamed white;');

BEGIN;
      SELECT rowid FROM t1 WHERE t1 MATCH 'stars' 
  

CREATE VIRTUAL TABLE t1 USING fts4;
    CREATE TABLE t2ext(a, b);
    CREATE VIRTUAL TABLE t2 USING fts4(content=t2ext);
    CREATE VIRTUAL TABLE t1aux USING fts4aux(t1);
    CREATE VIRTUAL TABLE t2aux USING fts4aux(t2);

    INSERT INTO t1   VALUES('a b c');
    INSERT INTO t2(rowid, a, b) VALUES(1, 'd e f', 'g h i');
  
BEGIN;
      INSERT INTO t1 VALUES('j k l');
  


BEGIN;
      INSERT INTO t2(rowid, a, b) VALUES(2, 'j k l', 'm n o');
  


1 "SELECT * FROM t1 WHERE rowid=1"
  2 "SELECT * FROM t1 WHERE t1 MATCH 'a'" 
  3 "SELECT rowid FROM t1 WHERE t1 MATCH 'a'"
  4 "SELECT * FROM t1"
  5 "SELECT * FROM t1aux"

2 "SELECT * FROM t2 WHERE t2 MATCH 'a'" 
  3 "SELECT rowid FROM t2 WHERE t2 MATCH 'a'"
  5 "SELECT * FROM t2aux"

