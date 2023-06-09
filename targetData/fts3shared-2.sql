

    CREATE VIRTUAL TABLE t1 USING fts4;
    CREATE TABLE t2ext(a, b);
    CREATE VIRTUAL TABLE t2 USING fts4(content=t2ext);
    CREATE VIRTUAL TABLE t1aux USING fts4aux(t1);
    CREATE VIRTUAL TABLE t2aux USING fts4aux(t2);

    INSERT INTO t1   VALUES('a b c');
    INSERT INTO t2(rowid, a, b) VALUES(1, 'd e f', 'g h i');
  


    BEGIN;
      INSERT INTO t1 VALUES('j k l');
  

SELECT * FROM t1 WHERE rowid=1

SELECT * FROM t1 WHERE t1 MATCH 'a'

SELECT rowid FROM t1 WHERE t1 MATCH 'a'

SELECT * FROM t1

SELECT * FROM t1aux






    BEGIN;
      INSERT INTO t2(rowid, a, b) VALUES(2, 'j k l', 'm n o');
  

SELECT * FROM t2 WHERE t2 MATCH 'a'

SELECT rowid FROM t2 WHERE t2 MATCH 'a'

SELECT * FROM t2aux




}

# Test that once a connection has read from the FTS or fts4aux table, 
# another connection may not write to the FTS table.
#
foreach {tn sql

  1 "SELECT * FROM t1 WHERE rowid=1"
  2 "SELECT * FROM t1 WHERE t1 MATCH 'a'" 
  3 "SELECT rowid FROM t1 WHERE t1 MATCH 'a'"
  4 "SELECT * FROM t1"
  5 "SELECT * FROM t1aux"


INSERT INTO t1 VALUES('p q r')

  2 "SELECT * FROM t2 WHERE t2 MATCH 'a'" 
  3 "SELECT rowid FROM t2 WHERE t2 MATCH 'a'"
  5 "SELECT * FROM t2aux"


INSERT INTO t2(rowid, a, b) VALUES(3, 's t u', 'v w x')
